from django.db import models


# from image_optimizer.fields import OptimizedImageField
# Create your models here.

class GeneralInfo(models.Model):
    company_name = models.CharField(max_length=500, verbose_name="نام شرکت")
    company_logo = models.ImageField(upload_to="logo/%Y/%m", default="logo/default_avatar.png",
                                     verbose_name="لوگو شرکت")
    address = models.CharField(max_length=5000, verbose_name="آدرس")
    telephone_1 = models.CharField(max_length=500, verbose_name="شماره تماس اول")
    telephone_2 = models.CharField(max_length=500, verbose_name="شماره تماس دوم")
    telephone_3 = models.CharField(max_length=500, verbose_name="شماره تماس سوم")
    telephone_4 = models.CharField(max_length=500, verbose_name="شماره تماس چهارم")
    mobile = models.CharField(max_length=500, verbose_name="موبایل")
    whatsapp_number = models.CharField(max_length=500, verbose_name="شماره تماس واتس‌اپ")
    twitter = models.CharField(max_length=500, verbose_name="آدرس توییتر")
    telegram = models.CharField(max_length=500, verbose_name="آدرس تلگرام")
    instagram = models.CharField(max_length=500, verbose_name="آدرس اینستاگرام")
    social_network_description = models.TextField(verbose_name="توضیحات شبکه‌ اجتماعی")
    feature_title_1 = models.CharField(max_length=500, verbose_name="عنوان ویژگی اول")
    feature_text_1 = models.TextField(verbose_name="محتوا ویژگی اول")
    feature_title_2 = models.CharField(max_length=500, verbose_name="عنوان ویژگی دوم")
    feature_text_2 = models.TextField(verbose_name="محتوا ویژگی دوم")
    feature_title_3 = models.CharField(max_length=500, verbose_name="عنوان ویژگی سوم")
    feature_text_3 = models.TextField(verbose_name="محتوا ویژگی سوم")
    feature_title_4 = models.CharField(max_length=500, verbose_name="عنوان ویژگی چهارم")
    feature_text_4 = models.TextField(verbose_name="محتوا ویژگی چهارم")
    general_feature_title = models.CharField(max_length=500, verbose_name="عنوان ویژگی عمومی")
    general_feature_text = models.TextField(verbose_name="محتوا ویژگی عمومی")


class MainBanner(models.Model):
    title = models.CharField(max_length=500, verbose_name="عنوان بنر")
    text = models.TextField(verbose_name="محتوا عنوان")
    image_1 = models.ImageField(upload_to="banner/%Y/%m", default="banner/default_avatar.png",
                                verbose_name="تصویر شماره یک")
    image_2 = models.ImageField(upload_to="banner/%Y/%m", default="banner/default_avatar.png",
                                verbose_name="تصویر شماره دو")
    image_3 = models.ImageField(upload_to="banner/%Y/%m", default="banner/default_avatar.png",
                                verbose_name="تصویر شماره سه")


class ProductGroup(models.Model):
    pass


class ProductDetail(models.Model):
    pass


class ChatProductDetail(models.Model):
    pass


class AboutUs(models.Model):
    pass


class FrequentlyAskedQuestion(models.Model):
    pass


class Blog(models.Model):
    pass


class Tags(models.Model):
    pass


class Category(models.Model):
    pass


class ChatBlog(models.Model):
    pass


class ImageGallery(models.Model):
    pass


class VideoGallery(models.Model):
    pass


class SampleRequierment(models.Model):
    pass


class ContactUs(models.Model):
    pass


class UserEmailBank(models.Model):
    pass
