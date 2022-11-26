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
