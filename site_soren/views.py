from django.shortcuts import render, redirect
from .models import *
from django.core.paginator import Paginator


def index_view(request):
    context = {
        "mainbanner": MainBanner.objects.all(),
        "essences": ProductDetail.objects.filter(product_group__type="ES").order_by("-id").distinct()[:6],
        "products_group": ProductGroup.objects.filter(parent__isnull=True).order_by("id")[:6],
        "fas": FrequentlyAskedQuestion.objects.all().order_by("-id")[:5],
        "aboutus": AboutUs.objects.first(),
        "general_info": GeneralInfo.objects.first(),
        "products": ProductDetail.objects.all().order_by("-id")[:9],
        "blogs": Blog.objects.all().order_by("-id")[:3]
    }
    return render(request, "index.html", context=context)


def not_found(request):
    return render(request, "404.html", context=None)


def contact_us(request):
    context = {
        "general_info": GeneralInfo.objects.first()
    }
    return render(request, "contact.html", context=context)


def recordcontactus_view(request):
    context = {}
    if request.POST:
        name = request.POST.get('name', "False")
        email = request.POST.get('email', "False")
        title = request.POST.get('subject', "False")
        text = request.POST.get('message', "False")
        qs_contact = ContactUs.objects.filter(name=name, email=email, title=title, read=False)
        if qs_contact:
            context['message'] = "پیامی با این محتوا وجود دارد."
            context['success'] = False
        else:
            contact = ContactUs(name=name, title=title, email=email, text=text, read=False)
            contact.save()
            context['message'] = "با موفقیت ثبت شد"
            context['success'] = True
    return render(request, "recordcontactus.html", context=context)


def about_us(request):
    context = {
        "aboutus": AboutUs.objects.first(),
    }
    return render(request, "about-us.html", context=context)


def blogs(request, id):
    if id is None:
        page = 1
    else:
        page = id
    qs_blog = Blog.objects.all().order_by("-id")
    paginator = Paginator(qs_blog, per_page=6)
    page_object = paginator.get_page(page)
    context = {
        "page_number": range(paginator.num_pages),
        "pages": page_object,
        "active_page": int(page),
        "previous_page": int(page) - 1 if int(page) > 1 else int(page),
        "next_page": int(page) + 1 if int(page) < paginator.num_pages else int(page),
        "products": ProductDetail.objects.all().order_by("-id")[:3]
    }
    return render(request, "blog.html", context=context)


def blog_detail(request, id):
    qs_allblog = Blog.objects.exclude(id=id).order_by("-id")[:2]
    qs_blog = Blog.objects.filter(id=id).first()
    qs_chat = ChatBlog.objects.filter(Blog_id=id, publish=True)
    context = {
        "blogs_sidebar": qs_allblog,
        "blog_detail": qs_blog,
        "chats": qs_chat,
        "num_chats": qs_chat.count()
    }
    # --- count visits
    qs_blog.views += 1
    qs_blog.save()
    # ---
    return render(request, "blog-single.html", context=context)


def blog_comment(request, id):
    context = {}
    if request.POST:
        rank = request.POST.get('rank', 0)
        firstname = request.POST.get('firstname', "False")
        lastname = request.POST.get('lastname', "False")
        email = request.POST.get('email', "False")
        phone = request.POST.get('phone', "False")
        message = request.POST.get('message', "False")
        # ---
        name = firstname + ' ' + lastname
        # ---
        qs_blog = Blog.objects.filter(id=id)
        blog = None
        if not qs_blog:
            context['message'] = "مقاله یافت نشد."
            context['success'] = False
        else:
            blog = qs_blog.first()
        # ---
        qs_contact = ChatBlog.objects.filter(username=name, email=email, read=False)
        if qs_contact:
            context['message'] = "پیامی با این محتوا وجود دارد."
            context['success'] = False
        else:
            contact = ChatBlog(username=name, email=email, phone=phone, text=message, score=rank, Blog=blog)
            contact.save()
            context['message'] = "با موفقیت ثبت شد"
            context['success'] = True
    return render(request, "blogcomment.html", context=context)


def faq(request):
    return render(request, "faq.html", context=None)


def gallery_image(request, id):
    if id is None:
        page = 1
    else:
        page = id
    qs_image = ImageGallery.objects.all().order_by("-id")
    paginator = Paginator(qs_image, per_page=6)
    page_object = paginator.get_page(page)
    context = {
        "page_number": range(paginator.num_pages),
        "pages": page_object,
        "active_page": int(page),
        "previous_page": int(page) - 1 if int(page) > 1 else int(page),
        "next_page": int(page) + 1 if int(page) < paginator.num_pages else int(page),
    }
    return render(request, "gallery.html", context=context)


def gallery_video(request, id):
    if id is None:
        page = 1
    else:
        page = id
    qs_video = VideoGallery.objects.all().order_by("-id")
    paginator = Paginator(qs_video, per_page=6)
    page_object = paginator.get_page(page)
    context = {
        "page_number": range(paginator.num_pages),
        "pages": page_object,
        "active_page": int(page),
        "previous_page": int(page) - 1 if int(page) > 1 else int(page),
        "next_page": int(page) + 1 if int(page) < paginator.num_pages else int(page),
    }
    return render(request, "gallery-video.html", context=context)


def product_detail(request, id):
    return render(request, "product-detail.html", context=None)


def product_group(request):
    context = {
        "groups": ProductGroup.objects.filter(parent__isnull=True).order_by("id")[:6]
    }
    return render(request, "product-groups.html", context=context)


def products(request, id, page):
    if page is None:
        page = 1
    else:
        page = page
    qs_products = ProductDetail.objects.filter(product_group__id__in=[id]).order_by("-id")
    qs_group = ProductGroup.objects.get(id=id)
    paginator = Paginator(qs_products, per_page=12)
    page_object = paginator.get_page(page)
    context = {
        "group_id": id,
        "group_data": qs_group,
        "page_number": range(paginator.num_pages),
        "pages": page_object,
        "active_page": int(page),
        "previous_page": int(page) - 1 if int(page) > 1 else int(page),
        "next_page": int(page) + 1 if int(page) < paginator.num_pages else int(page),
    }
    return render(request, "products.html", context=context)


def sample_request(request):
    context = {
        "SampleRequierment": SampleRequierment.objects.get(id=1)
    }
    return render(request, "sample-request.html", context=context)


def record_sample(request):
    context = {}
    if request.POST:
        name = request.POST.get('user_name', "False")
        company_name = request.POST.get('company_name', "False")
        email = request.POST.get('email', "False")
        phone = request.POST.get('phone', "False")
        text = request.POST.get('text', "False")
        qs_contact = SampleRequierment.objects.filter(name=name, company_name=company_name, email=email, read=False)
        if qs_contact:
            context['message'] = "پیامی با این محتوا وجود دارد."
            context['success'] = False
        else:
            contact = SampleRequierment(name=name, company_name=company_name, email=email, phone=phone,
                                        description=text, read=False)
            contact.save()
            context['message'] = "با موفقیت ثبت شد"
            context['success'] = True
    return render(request, "recordsample.html", context=context)


def header_view(request, *args, **kwargs):
    result = {
        -1: {"id": -1, "name": "همه", "sub_cat": []}
    }
    # ---
    for cat in ProductGroup.objects.all().order_by("id"):
        if not cat.parent:
            result.setdefault(cat.id, {"id": cat.id, "name": cat.name, "sub_cat": []})
    # ---
    qs_gi = GeneralInfo.objects.first()
    context = {
        "company_cats": list(result.values()),
        "email": qs_gi.email,
        "phone": qs_gi.mobile,
        "logo": qs_gi.company_logo,
        "company_name": qs_gi.company_name
    }
    return render(request, "layout/header.html", context=context)


def footer_view(request):
    return render(request, "layout/footer.html", context=None)
