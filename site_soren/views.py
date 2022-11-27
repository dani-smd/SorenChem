from django.shortcuts import render, redirect
from .models import *


def index_view(request):
    # qs_GI = GeneralInfo.objects.first()
    # context = {
    #     "about_us": qs_GI.description,
    #     "company_name": qs_GI.company_name,
    #     "keywords": [qs_GI.company_name,],
    #     "feature1": qs_GI.feature_1,
    #     "feature2": qs_GI.feature_2,
    #     "customers": Customers.objects.all().order_by("-id"),
    #     "honors": Honors.objects.all().order_by("-id"),
    #     "products": PriorityProduct.objects.all().order_by("-id"),
    #     "blogs": Blogs.objects.all().order_by("-id")[:5],
    #     "sliders": Slider.objects.all(),
    #     "phone":qs_GI.phone,
    #     "banner_desktop": BannerDesktop.objects.all(),
    #     "banner_mobile": BannerMobile.objects.all(),
    # }
    return render(request, "index.html", context=None)


def not_found(request):
    return render(request, "404.html", context=None)


def contact_us(request):
    return render(request, "contact.html", context=None)


def about_us(request):
    return render(request, "about-us.html", context=None)


def blogs(request):
    return render(request, "blog.html", context=None)


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
    return render(request, "sample-request.html", context=None)


def header_view(request):
    return render(request, "index.html", context=None)


def footer_view(request):
    return render(request, "index.html", context=None)
