from django.shortcuts import render, redirect
from .models import *


def index_view(request):
    qs_generalinfo = GeneralInfo.objects.first()
    context = {
        "mainbanner": MainBanner.objects.all(),
        "essences": ProductDetail.objects.filter(product_group__type="ES").order_by("-id")[:9],
        "products_group": ProductGroup.objects.all(),
        "fas": FrequentlyAskedQuestion.objects.all().order_by("-id")[:5],
        "aboutus": AboutUs.objects.all(),
        "general_info": GeneralInfo.objects.all(),
        "products": ProductDetail.objects.all().order_by("-id")[:6],
        "blogs": Blog.objects.all().order_by("-id")[:3]
    }
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
