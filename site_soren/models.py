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
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")

    def __str__(self) -> str:
        return "اطلاعات کلی سایت"

    class Meta:
        verbose_name = "اطلاعات سایت"
        verbose_name_plural = "اطلاعات کلی سایت"


class MainBanner(models.Model):
    title = models.CharField(max_length=500, verbose_name="عنوان بنر")
    text = models.TextField(verbose_name="محتوا عنوان")
    image_1 = models.ImageField(upload_to="banner/%Y/%m", default="banner/default_avatar.png",
                                verbose_name="تصویر شماره یک")
    image_2 = models.ImageField(upload_to="banner/%Y/%m", default="banner/default_avatar.png",
                                verbose_name="تصویر شماره دو")
    image_3 = models.ImageField(upload_to="banner/%Y/%m", default="banner/default_avatar.png",
                                verbose_name="تصویر شماره سه")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")

    def __str__(self) -> str:
        return self.title

    class Meta:
        verbose_name = "بنر اصلی"
        verbose_name_plural = "بنرهای اصلی"


class ProductGroup(models.Model):
    name = models.CharField(max_length=500, verbose_name="نام گروه")
    description = models.TextField(verbose_name="توضیحات")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")

    def __str__(self) -> str:
        return self.name

    class Meta:
        verbose_name = "دسته محصول"
        verbose_name_plural = "دسته محصولات"


class ProductDetail(models.Model):
    title = models.CharField(max_length=500, verbose_name="عنوان")
    farsi_name = models.CharField(max_length=500, verbose_name="نام فارسی")
    english_name = models.CharField(max_length=500, verbose_name="نام لاتین")
    formula = models.CharField(max_length=500, verbose_name="فرمول")
    package_type = models.CharField(max_length=500, verbose_name="نوع بسته‌بندی")
    made_by = models.CharField(max_length=500, verbose_name="ساخت کشور")
    application = models.CharField(max_length=500, verbose_name="کاربرد")
    file = models.ImageField(upload_to="productFile/%Y/%m", null=True, blank=True, verbose_name="فایل")
    image_1 = models.ImageField(upload_to="productImage/%Y/%m", null=True, blank=True, verbose_name="تصویر یک محصول")
    image_2 = models.ImageField(upload_to="productImage/%Y/%m", null=True, blank=True, verbose_name="تصویر دو محصول")
    image_3 = models.ImageField(upload_to="productImage/%Y/%m", null=True, blank=True, verbose_name="تصویر سه محصول")
    description = models.TextField(verbose_name="توضیحات")
    views = models.IntegerField(default=0, verbose_name="تعداد بازدیدها")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")

    def __str__(self) -> str:
        return self.title

    class Meta:
        verbose_name = "جزيیات محصول"
        verbose_name_plural = "جزيیات محصولات"


class ChatProductDetail(models.Model):
    username = models.CharField(max_length=500, verbose_name="عنوان")
    email = models.CharField(max_length=500, verbose_name="عنوان")
    text = models.TextField(verbose_name="توضیحات")
    score = models.IntegerField(max_length=10, default=0, verbose_name="امتیاز")
    product_detail = models.ForeignKey(ProductDetail, on_delete=models.CASCADE, null=True, blank=True,
                                       verbose_name="جزيیات محصول")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")

    def __str__(self) -> str:
        return self.username

    class Meta:
        verbose_name = "چت جزيیات محصول"
        verbose_name_plural = "چت جزيیات محصولات"


class AboutUs(models.Model):
    introduction_text = models.TextField(verbose_name="توضیحات معرفی", null=True, blank=True)
    first_feature = models.CharField(max_length=500, null=True, blank=True, verbose_name="ویژگی اول")
    first_feature_text = models.TextField(verbose_name="توضیحات ویژگی اول", null=True, blank=True)
    second_feature = models.CharField(max_length=500, null=True, blank=True, verbose_name="ویژگی دوم")
    second_feature_text = models.TextField(verbose_name="توضیحات ویژگی دوم", null=True, blank=True)
    title_employee_1 = models.CharField(max_length=500, null=True, blank=True, verbose_name="عنوان کاری کارمند اول")
    name_employee_1 = models.CharField(max_length=500, null=True, blank=True, verbose_name="نام کارمند اول")
    image_employee_1 = models.ImageField(upload_to="productFile/%Y/%m", null=True, blank=True,
                                         verbose_name="تصویر کارمند اول")
    telegram_employee_1 = models.CharField(max_length=500, null=True, blank=True, verbose_name="آدرس تلگرام کارمند اول")
    whatsapp_employee_1 = models.CharField(max_length=500, null=True, blank=True,
                                           verbose_name="آدرس واتس‌اپ کارمند اول")
    twitter_employee_1 = models.CharField(max_length=500, null=True, blank=True, verbose_name="آدرس توییتر کارمند اول")
    title_employee_2 = models.CharField(max_length=500, null=True, blank=True, verbose_name="عنوان کاری کارمند دوم")
    name_employee_2 = models.CharField(max_length=500, null=True, blank=True, verbose_name="نام کارمند دوم")
    image_employee_2 = models.ImageField(upload_to="productFile/%Y/%m", null=True, blank=True,
                                         verbose_name="تصویر کارمند دوم")
    telegram_employee_2 = models.CharField(max_length=500, null=True, blank=True, verbose_name="آدرس تلگرام کارمند دوم")
    whatsapp_employee_2 = models.CharField(max_length=500, null=True, blank=True,
                                           verbose_name="آدرس واتس‌اپ کارمند دوم")
    twitter_employee_2 = models.CharField(max_length=500, null=True, blank=True, verbose_name="آدرس توییتر کارمند دوم")
    title_employee_3 = models.CharField(max_length=500, null=True, blank=True, verbose_name="عنوان کاری کارمند سوم")
    name_employee_3 = models.CharField(max_length=500, null=True, blank=True, verbose_name="نام کارمند سوم")
    image_employee_3 = models.ImageField(upload_to="productFile/%Y/%m", null=True, blank=True,
                                         verbose_name="تصویر کارمند سوم")
    telegram_employee_3 = models.CharField(max_length=500, null=True, blank=True, verbose_name="آدرس تلگرام کارمند سوم")
    whatsapp_employee_3 = models.CharField(max_length=500, null=True, blank=True,
                                           verbose_name="آدرس واتس‌اپ کارمند سوم")
    twitter_employee_3 = models.CharField(max_length=500, null=True, blank=True, verbose_name="آدرس توییتر کارمند سوم")
    title_employee_4 = models.CharField(max_length=500, null=True, blank=True, verbose_name="عنوان کاری کارمند چهارم")
    name_employee_4 = models.CharField(max_length=500, null=True, blank=True, verbose_name="نام کارمند چهارم")
    image_employee_4 = models.ImageField(upload_to="productFile/%Y/%m", null=True, blank=True,
                                         verbose_name="تصویر کارمند چهارم")
    telegram_employee_4 = models.CharField(max_length=500, null=True, blank=True,
                                           verbose_name="آدرس تلگرام کارمند چهارم")
    whatsapp_employee_4 = models.CharField(max_length=500, null=True, blank=True,
                                           verbose_name="آدرس واتس‌اپ کارمند چهارم")
    twitter_employee_4 = models.CharField(max_length=500, null=True, blank=True,
                                          verbose_name="آدرس توییتر کارمند چهارم")
    title_employee_5 = models.CharField(max_length=500, null=True, blank=True, verbose_name="عنوان کاری کارمند پنجم")
    name_employee_5 = models.CharField(max_length=500, verbose_name="نام کارمند پنجم")
    image_employee_5 = models.ImageField(upload_to="productFile/%Y/%m", null=True, blank=True,
                                         verbose_name="تصویر کارمند پنجم")
    telegram_employee_5 = models.CharField(max_length=500, null=True, blank=True,
                                           verbose_name="آدرس تلگرام کارمند پنجم")
    whatsapp_employee_5 = models.CharField(max_length=500, null=True, blank=True,
                                           verbose_name="آدرس واتس‌اپ کارمند پنجم")
    twitter_employee_5 = models.CharField(max_length=500, null=True, blank=True, verbose_name="آدرس توییتر کارمند پنجم")
    who_we_are = models.TextField(null=True, blank=True, verbose_name="ما کیستیم؟")
    our_mission = models.TextField(null=True, blank=True, verbose_name="ماموریت ما")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")

    def __str__(self) -> str:
        return "درباره ما"

    class Meta:
        verbose_name = "درباره ما"
        verbose_name_plural = "درباره‌ ما"


class FrequentlyAskedQuestion(models.Model):
    title = models.CharField(max_length=500, null=True, blank=True, verbose_name="سوال")
    answer = models.TextField(null=True, blank=True, verbose_name="پاسخ")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")

    def __str__(self) -> str:
        return self.title

    class Meta:
        verbose_name = "سوال متداول"
        verbose_name_plural = "سوالات متداول"


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
