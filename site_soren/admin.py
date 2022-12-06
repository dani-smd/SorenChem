from django.contrib import admin

from site_soren.models import (GeneralInfo, MainBanner, ProductGroup, Tags, Category, ProductDetail, ChatProductDetail,
                               AboutUs, FrequentlyAskedQuestion, Blog, ChatBlog, ImageGallery, VideoGallery,
                               SampleRequierment, ContactUs, UserEmailBank)

admin.site.register(GeneralInfo)
admin.site.register(MainBanner)
admin.site.register(ProductGroup)
admin.site.register(Tags)
admin.site.register(Category)
admin.site.register(ProductDetail)
admin.site.register(ChatProductDetail)
admin.site.register(AboutUs)
admin.site.register(FrequentlyAskedQuestion)
admin.site.register(Blog)
admin.site.register(ChatBlog)
admin.site.register(ImageGallery)
admin.site.register(VideoGallery)
admin.site.register(SampleRequierment)
admin.site.register(ContactUs)
admin.site.register(UserEmailBank)
