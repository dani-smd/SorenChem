from django.db import models
from tinymce.models import HTMLField
from django.contrib.sitemaps import ping_google

# from image_optimizer.fields import OptimizedImageField
# Create your models here.
#
CATEGORY = (
    ("AI", "Agriculture Industry"),  # صنایع کشاورزی
    ("ES", "Essence"),  # اسانس‌ها
    ('FI', "Food Industry"),  # صنایع غذایی
    ('SO', "solvers"),  # حلال‌ها
    ('WI', "Water Treatment Industries"),  # صنایع تصفیه آب
    ('CI', "Cosmetics Industry")  # صنایع آرایشی و بهداشتی
)


class Tags(models.Model):
    name = models.CharField(max_length=300, verbose_name="نام تگ")

    def __str__(self) -> str:
        return self.name

    class Meta:
        verbose_name = "تگ"
        verbose_name_plural = "تگ‌ها"


class GeneralInfo(models.Model):
    company_name = models.CharField(max_length=500, verbose_name="نام شرکت", null=True, blank=True)
    company_logo = models.ImageField(upload_to="logo/%Y/%m", default="logo/default_avatar.png", verbose_name="لوگو",
                                     null=True, blank=True)
    address = models.CharField(max_length=5000, verbose_name="آدرس", null=True, blank=True)
    email = models.CharField(max_length=5000, verbose_name="ایمیل", null=True, blank=True)
    telephone = models.CharField(max_length=11, verbose_name="شماره تماس هدر", null=True, blank=True)
    telephone_1 = models.CharField(max_length=11, verbose_name="شماره تماس اول", null=True, blank=True)
    telephone_2 = models.CharField(max_length=11, verbose_name="شماره تماس دوم", null=True, blank=True)
    telephone_3 = models.CharField(max_length=11, verbose_name="شماره تماس سوم", null=True, blank=True)
    telephone_4 = models.CharField(max_length=11, verbose_name="شماره تماس چهارم", null=True, blank=True)
    mobile = models.CharField(max_length=11, verbose_name="موبایل", null=True, blank=True)
    whatsapp_number = models.CharField(max_length=20, verbose_name="شماره تماس واتس‌اپ", null=True, blank=True)
    tags = models.ManyToManyField(Tags, null=True, blank=True, verbose_name="تگ مرتبط با صفحه‌ اصلی")
    contactus_text = HTMLField(verbose_name="متن صفحه درباره ما", null=True, blank=True)
    twitter = models.CharField(max_length=100, verbose_name="آدرس توییتر", null=True, blank=True)
    whatsapp = models.CharField(max_length=100, verbose_name="آدرس واتس‌اپ", null=True, blank=True)
    telegram = models.CharField(max_length=100, verbose_name="آدرس تلگرام", null=True, blank=True)
    instagram = models.CharField(max_length=100, verbose_name="آدرس اینستاگرام", null=True, blank=True)
    aparat = models.CharField(max_length=100, verbose_name="آدرس  آپارات", null=True, blank=True)
    linkedin = models.CharField(max_length=100, verbose_name="آدرس  لینکدین", null=True, blank=True)
    facebook = models.CharField(max_length=100, verbose_name="آدرس  فیس‌بوک", null=True, blank=True)
    social_network_description = HTMLField(verbose_name="توضیحات شبکه‌ اجتماعی", null=True, blank=True)
    feature_title_1 = models.CharField(max_length=300, verbose_name="عنوان ویژگی اول", null=True, blank=True)
    feature_text_1 = HTMLField(verbose_name="محتوا ویژگی اول", null=True, blank=True)
    feature_title_2 = models.CharField(max_length=300, verbose_name="عنوان ویژگی دوم", null=True, blank=True)
    feature_text_2 = HTMLField(verbose_name="محتوا ویژگی دوم", null=True, blank=True)
    feature_title_3 = models.CharField(max_length=300, verbose_name="عنوان ویژگی سوم", null=True, blank=True)
    feature_text_3 = HTMLField(verbose_name="محتوا ویژگی سوم", null=True, blank=True)
    feature_title_4 = models.CharField(max_length=300, verbose_name="عنوان ویژگی چهارم", null=True, blank=True)
    feature_text_4 = HTMLField(verbose_name="محتوا ویژگی چهارم", null=True, blank=True)
    general_feature_title = models.CharField(max_length=300, verbose_name="عنوان ویژگی عمومی", null=True, blank=True)
    general_feature_text = HTMLField(verbose_name="محتوا ویژگی عمومی", null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد", null=True, blank=True)
    conditions = HTMLField(verbose_name="قوانین و مقررات", null=True, blank=True)

    def __str__(self) -> str:
        return "اطلاعات کلی سایت"

    class Meta:
        verbose_name = "اطلاعات سایت"
        verbose_name_plural = "اطلاعات کلی سایت"


class MainBanner(models.Model):
    title = models.CharField(max_length=300, verbose_name="عنوان بنر", null=True, blank=True)
    text = HTMLField(verbose_name="محتوا عنوان", null=True, blank=True)
    image_1 = models.ImageField(upload_to="./banner/%Y/%m", verbose_name="تصویر صفحه اصلی", null=True, blank=True)
    image_2 = models.ImageField(upload_to="./banner/%Y/%m", verbose_name="تصویر شماره دو", null=True, blank=True)
    image_3 = models.ImageField(upload_to="./banner/%Y/%m", verbose_name="تصویر شماره سه", null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")

    def __str__(self) -> str:
        return f"بنر با عنوان: {self.title}"

    class Meta:
        verbose_name = "بنر اصلی"
        verbose_name_plural = "بنرهای اصلی"


class ProductGroup(models.Model):
    parent = models.ForeignKey("self", on_delete=models.CASCADE, null=True, blank=True, verbose_name="والد")
    type = models.CharField(max_length=5, choices=CATEGORY, null=True, blank=True, verbose_name="نوع محصول")
    name = models.CharField(max_length=300, verbose_name="نام گروه", null=True, blank=True)
    flat_name = models.CharField(max_length=300, verbose_name="نام آیکون", null=True, blank=True)
    description = HTMLField(verbose_name="توضیحات", null=True, blank=True)
    url = models.CharField(max_length=300, verbose_name="متن قابل نمایش در URL", null=True, blank=True)
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")

    def __str__(self) -> str:
        return self.name

    class Meta:
        verbose_name = "دسته محصول"
        verbose_name_plural = "دسته محصولات"


class Category(models.Model):
    name = models.CharField(max_length=300, verbose_name="نام دسته")

    def __str__(self) -> str:
        return self.name

    class Meta:
        verbose_name = "دسته"
        verbose_name_plural = "دسته‌ها"


class ProductDetail(models.Model):
    product_group = models.ManyToManyField(ProductGroup, null=True, blank=True, verbose_name="دسته محصول")
    title = models.CharField(max_length=300, null=True, blank=True, verbose_name="عنوان")
    farsi_name = models.CharField(max_length=300, null=True, blank=True, verbose_name="نام فارسی")
    english_name = models.CharField(max_length=300, null=True, blank=True, verbose_name="نام لاتین")
    formula = models.CharField(max_length=300, null=True, blank=True, verbose_name="فرمول شیمیایی")
    package_type = models.CharField(max_length=300, null=True, blank=True, verbose_name="نوع بسته‌بندی")
    made_by = models.CharField(max_length=300, null=True, blank=True, verbose_name="ساخت کشور")
    application = models.CharField(max_length=300, null=True, blank=True, verbose_name="کاربرد")
    file = models.ImageField(upload_to="productFile/%Y/%m", null=True, blank=True, verbose_name="آپلود فایل آنالیز")
    image_1 = models.ImageField(upload_to="productImage/%Y/%m", null=True, blank=True,
                                verbose_name="تصویر در صفحه جزئیات محصول")
    image_2 = models.ImageField(upload_to="productImage/%Y/%m", null=True, blank=True,
                                verbose_name="تصویر در صفحه اصلی")
    image_3 = models.ImageField(upload_to="productImage/%Y/%m", null=True, blank=True,
                                verbose_name="تصویر شماره سه محصول")
    description = HTMLField(verbose_name="توضیحات")
    url = models.CharField(max_length=300, verbose_name="متن قابل نمایش در URL", null=True, blank=True)
    tags = models.ManyToManyField(Tags, null=True, blank=True, verbose_name="تگ مرتبط با محصول")
    category = models.ManyToManyField(Category, null=True, blank=True, verbose_name="دسته مرتبط با محصول")
    views = models.IntegerField(default=0, verbose_name="تعداد بازدیدها")
    show_in_last_product = models.BooleanField(default=False, verbose_name="نمایش در بخش آخرین محصولات")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")

    def __str__(self) -> str:
        return self.title

    class Meta:
        verbose_name = "جزيیات محصول"
        verbose_name_plural = "جزيیات محصولات"


class ChatProductDetail(models.Model):
    username = models.CharField(max_length=300, verbose_name="نام و نشان")
    email = models.CharField(max_length=50, verbose_name="ایمیل")
    phone = models.CharField(max_length=11, verbose_name="تلفن‌همراه")
    text = HTMLField(verbose_name="توضیحات")
    score = models.IntegerField(default=0, verbose_name="امتیاز")
    product_detail = models.ForeignKey(ProductDetail, on_delete=models.CASCADE, null=True, blank=True,
                                       verbose_name="محصول مرتبط با این نظر")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")
    read = models.BooleanField(default=False, verbose_name="خوانده شد؟")
    publish = models.BooleanField(default=False, verbose_name="منتشر شود؟")

    def __str__(self) -> str:
        return self.username

    class Meta:
        verbose_name = "چت جزيیات محصول"
        verbose_name_plural = "چت جزيیات محصولات"


class AboutUs(models.Model):
    introduction_text = HTMLField(verbose_name="توضیحات معرفی", null=True, blank=True)
    first_feature = models.CharField(max_length=300, null=True, blank=True, verbose_name="ویژگی اول")
    first_feature_text = HTMLField(verbose_name="توضیحات ویژگی اول", null=True, blank=True)
    second_feature = models.CharField(max_length=300, null=True, blank=True, verbose_name="ویژگی دوم")
    second_feature_text = HTMLField(verbose_name="توضیحات ویژگی دوم", null=True, blank=True)
    title_employee_1 = models.CharField(max_length=300, null=True, blank=True, verbose_name="عنوان کاری کارمند اول")
    name_employee_1 = models.CharField(max_length=300, null=True, blank=True, verbose_name="نام کارمند اول")
    image_employee_1 = models.ImageField(upload_to="aboutus/%Y/%m", null=True, blank=True,
                                         verbose_name="تصویر کارمند اول")
    telegram_employee_1 = models.CharField(max_length=300, null=True, blank=True, verbose_name="آدرس تلگرام کارمند اول")
    whatsapp_employee_1 = models.CharField(max_length=300, null=True, blank=True,
                                           verbose_name="آدرس واتس‌اپ کارمند اول")
    twitter_employee_1 = models.CharField(max_length=300, null=True, blank=True, verbose_name="آدرس توییتر کارمند اول")
    title_employee_2 = models.CharField(max_length=300, null=True, blank=True, verbose_name="عنوان کاری کارمند دوم")
    name_employee_2 = models.CharField(max_length=300, null=True, blank=True, verbose_name="نام کارمند دوم")
    image_employee_2 = models.ImageField(upload_to="aboutus/%Y/%m", null=True, blank=True,
                                         verbose_name="تصویر کارمند دوم")
    telegram_employee_2 = models.CharField(max_length=300, null=True, blank=True, verbose_name="آدرس تلگرام کارمند دوم")
    whatsapp_employee_2 = models.CharField(max_length=300, null=True, blank=True,
                                           verbose_name="آدرس واتس‌اپ کارمند دوم")
    twitter_employee_2 = models.CharField(max_length=300, null=True, blank=True, verbose_name="آدرس توییتر کارمند دوم")
    title_employee_3 = models.CharField(max_length=300, null=True, blank=True, verbose_name="عنوان کاری کارمند سوم")
    name_employee_3 = models.CharField(max_length=300, null=True, blank=True, verbose_name="نام کارمند سوم")
    image_employee_3 = models.ImageField(upload_to="aboutus/%Y/%m", null=True, blank=True,
                                         verbose_name="تصویر کارمند سوم")
    telegram_employee_3 = models.CharField(max_length=300, null=True, blank=True, verbose_name="آدرس تلگرام کارمند سوم")
    whatsapp_employee_3 = models.CharField(max_length=300, null=True, blank=True,
                                           verbose_name="آدرس واتس‌اپ کارمند سوم")
    twitter_employee_3 = models.CharField(max_length=300, null=True, blank=True, verbose_name="آدرس توییتر کارمند سوم")
    title_employee_4 = models.CharField(max_length=300, null=True, blank=True, verbose_name="عنوان کاری کارمند چهارم")
    name_employee_4 = models.CharField(max_length=300, null=True, blank=True, verbose_name="نام کارمند چهارم")
    image_employee_4 = models.ImageField(upload_to="aboutus/%Y/%m", null=True, blank=True,
                                         verbose_name="تصویر کارمند چهارم")
    telegram_employee_4 = models.CharField(max_length=300, null=True, blank=True,
                                           verbose_name="آدرس تلگرام کارمند چهارم")
    whatsapp_employee_4 = models.CharField(max_length=300, null=True, blank=True,
                                           verbose_name="آدرس واتس‌اپ کارمند چهارم")
    twitter_employee_4 = models.CharField(max_length=300, null=True, blank=True,
                                          verbose_name="آدرس توییتر کارمند چهارم")
    image = models.ImageField(upload_to="aboutus/%Y/%m", null=True, blank=True, verbose_name="تصویر بالای ما کیستیم")
    who_we_are = HTMLField(null=True, blank=True, verbose_name="ما کیستیم؟")
    our_mission = HTMLField(null=True, blank=True, verbose_name="ماموریت ما")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")

    def __str__(self) -> str:
        return "درباره ما"

    class Meta:
        verbose_name = "درباره ما"
        verbose_name_plural = "درباره‌ ما"


class FrequentlyAskedQuestion(models.Model):
    title = models.CharField(max_length=300, null=True, blank=True, verbose_name="سوال")
    answer = HTMLField(null=True, blank=True, verbose_name="پاسخ")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")

    def __str__(self) -> str:
        return self.title

    class Meta:
        verbose_name = "سوال متداول"
        verbose_name_plural = "سوالات متداول"


class Blog(models.Model):
    title = models.CharField(max_length=300, null=True, blank=True, verbose_name="عنوان")
    text = HTMLField(null=True, blank=True, verbose_name="متن مقاله")
    text_summary = models.TextField(null=True, blank=True, verbose_name="خلاصه مقاله")
    tags = models.ManyToManyField(Tags, null=True, blank=True, verbose_name="تگ مرتبط با مقاله")
    category = models.ManyToManyField(Category, null=True, blank=True, verbose_name="دسته مرتبط با مقاله")
    image_1 = models.ImageField(upload_to="blogImage/%Y/%m", null=True, blank=True, verbose_name="تصویر در صفحه اصلی")
    image_2 = models.ImageField(upload_to="blogImage/%Y/%m", null=True, blank=True, verbose_name="تصویر در داخلی مقاله")
    image_3 = models.ImageField(upload_to="blogImage/%Y/%m", null=True, blank=True, verbose_name="تصویر ساید بار")
    url = models.CharField(max_length=300, verbose_name="متن قابل نمایش در URL", null=True, blank=True)
    views = models.IntegerField(default=0, verbose_name="تعداد بازدیدها")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")
    publish = models.BooleanField(default=False, verbose_name="منتشر شود؟")

    def __str__(self) -> str:
        return self.title

    class Meta:
        verbose_name = "مقاله"
        verbose_name_plural = "مقالات"


class ChatBlog(models.Model):
    username = models.CharField(max_length=300, verbose_name="نام")
    email = models.CharField(max_length=50, verbose_name="ایمیل")
    phone = models.CharField(max_length=11, verbose_name="تلفن‌ همراه", null=True, blank=True)
    text = HTMLField(verbose_name="توضیحات")
    score = models.IntegerField(default=0, verbose_name="امتیاز")
    Blog = models.ForeignKey(Blog, on_delete=models.CASCADE, null=True, blank=True,
                             verbose_name="مقاله مرتبط با این نظر")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد")
    read = models.BooleanField(default=False, verbose_name="خوانده شد؟")
    publish = models.BooleanField(default=False, verbose_name="منتشر شود؟")

    def __str__(self) -> str:
        return self.username

    class Meta:
        verbose_name = "چت مقاله"
        verbose_name_plural = "چت مقالات"


class ImageGallery(models.Model):
    title = models.CharField(max_length=300, null=True, blank=True, verbose_name="عنوان")
    text = HTMLField(null=True, blank=True, verbose_name="متن مرتبط با تصویر")
    image = models.ImageField(upload_to="imageGallery/%Y/%m", null=True, blank=True, verbose_name="تصویر")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد", null=True, blank=True)

    def __str__(self) -> str:
        return self.title

    class Meta:
        verbose_name = "تصویر"
        verbose_name_plural = "گالری تصاویر"


class VideoGallery(models.Model):
    title = models.CharField(max_length=300, null=True, blank=True, verbose_name="عنوان")
    text = HTMLField(null=True, blank=True, verbose_name="متن مرتبط با ویدئو")
    image = models.ImageField(upload_to="videoGallery/background/image/%Y/%m", null=True, blank=True,
                              verbose_name="تصویر بک‌گراند ویدئو")
    video = models.FileField(upload_to="videoGallery/%Y/%m", null=True, blank=True, verbose_name="ویدئو")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد", null=True, blank=True)

    def __str__(self) -> str:
        return self.title

    class Meta:
        verbose_name = "ویدئو"
        verbose_name_plural = "گالری ویدئو"


class SampleRequierment(models.Model):
    name = models.CharField(max_length=300, verbose_name="نام")
    company_name = models.CharField(max_length=300, verbose_name="نام شرکت")
    email = models.CharField(max_length=50, verbose_name="ایمیل")
    phone = models.CharField(max_length=11, verbose_name="تلفن‌ همراه")
    description = HTMLField(null=True, blank=True, verbose_name="توضیحات")
    read = models.BooleanField(default=False, verbose_name="خوانده شد؟")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد", null=True, blank=True)

    def __str__(self) -> str:
        return self.name

    class Meta:
        verbose_name = "نمونه درخواستی"
        verbose_name_plural = "نمونه‌های درخواستی"


class ContactUs(models.Model):
    name = models.CharField(max_length=300, verbose_name="نام")
    title = models.CharField(max_length=300, null=True, blank=True, verbose_name="عنوان")
    email = models.CharField(max_length=50, null=True, blank=True, verbose_name="ایمیل")
    phone = models.CharField(max_length=11, null=True, blank=True, verbose_name="موبایل")
    text = HTMLField(null=True, blank=True, verbose_name="متن تماس با ما")
    read = models.BooleanField(default=False, verbose_name="خوانده شد؟")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد", null=True, blank=True)

    def __str__(self) -> str:
        return self.title

    class Meta:
        verbose_name = "ارتباط با ما"
        verbose_name_plural = "ارتباط با ما"


class UserEmailBank(models.Model):
    email = models.CharField(max_length=50, verbose_name="ایمیل")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد", null=True, blank=True)

    def __str__(self) -> str:
        return self.email

    class Meta:
        verbose_name = "ایمیل"
        verbose_name_plural = "بانک ایمیل"


class ImageBank(models.Model):
    name = models.CharField(max_length=300, verbose_name="نام")
    image = models.ImageField(upload_to="imageGallery/blogs_and_products/image/%Y/%m", null=True, blank=True,
                              verbose_name="تصویر")
    created = models.DateTimeField(auto_now_add=True, verbose_name="ساعت و تاریخ ایجاد", null=True, blank=True)

    def __str__(self) -> str:
        return self.name

    class Meta:
        verbose_name = "تصویر"
        verbose_name_plural = "بانک تصاویر"


class Entry(models.Model):
    # ...
    def save(self, force_insert=False, force_update=False):
        super().save(force_insert, force_update)
        try:
            ping_google()
        except Exception:
            # Bare 'except' because we could get a variety
            # of HTTP-related exceptions.
            pass
