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


def blogs(request, id=None):
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


def blog_detail(request):
    return render(request, "blog-single.html", context=None)


def faq(request):
    return render(request, "faq.html", context=None)


def gallery_image(request):
    return render(request, "gallery.html", context=None)


def gallery_video(request):
    return render(request, "gallery-video.html", context=None)


def product_detail(request):
    return render(request, "product-detail.html", context=None)


def product_group(request):
    return render(request, "product-groups.html", context=None)


def products(request):
    return render(request, "products.html", context=None)


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


def header_view(request):
    return render(request, "index.html", context=None)


def footer_view(request):
    return render(request, "index.html", context=None)
