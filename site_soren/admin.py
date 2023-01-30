from django.contrib import admin

from site_soren.models import (GeneralInfo, MainBanner, ProductGroup, Tags, Category, ProductDetail, ChatProductDetail,
                               AboutUs, FrequentlyAskedQuestion, Blog, ChatBlog, ImageGallery, VideoGallery,
                               SampleRequierment, ContactUs, UserEmailBank)


class SampleRequiermentAdmin(admin.ModelAdmin):
    list_display = ("owner_name", "read", "created")
    list_per_page = 25

    @admin.display(description="نام کاربر")
    def owner_name(self, obj):
        return obj.name


class ChatBlogAdmin(admin.ModelAdmin):
    list_display = ("owner_name", "read", "created")
    list_per_page = 25

    @admin.display(description="نام کاربر")
    def owner_name(self, obj):
        return obj.username


class ChatProductDetailAdmin(admin.ModelAdmin):
    list_display = ("owner_name", "read", "created")
    list_per_page = 25

    @admin.display(description="نام کاربر")
    def owner_name(self, obj):
        return obj.username


class ContactUsAdmin(admin.ModelAdmin):
    list_display = ("title", "read", "created")
    list_per_page = 25

    @admin.display(description="عنوان")
    def title(self, obj):
        return obj.title


admin.site.register(GeneralInfo)
admin.site.register(MainBanner)
admin.site.register(ProductGroup)
admin.site.register(Tags)
admin.site.register(Category)
admin.site.register(ProductDetail)
admin.site.register(ChatProductDetail, ChatProductDetailAdmin)
admin.site.register(AboutUs)
admin.site.register(FrequentlyAskedQuestion)
admin.site.register(Blog)
admin.site.register(ChatBlog, ChatBlogAdmin)
admin.site.register(ImageGallery)
admin.site.register(VideoGallery)
admin.site.register(SampleRequierment, SampleRequiermentAdmin)
admin.site.register(ContactUs, ContactUsAdmin)
admin.site.register(UserEmailBank)
