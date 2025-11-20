import feedparser

# آدرس RSS سایت آهن‌نیوز
rss_url = "https://www.ahan-news.com/feed"

# خواندن فید
feed = feedparser.parse(rss_url)

# نمایش اطلاعات کلی
print("عنوان فید:", feed.feed.title)
print("لینک سایت:", feed.feed.link)
print("توضیحات:", feed.feed.description)
print("="*50)

# نمایش چند خبر اول
for entry in feed.entries[:10]:  # ۱۰ خبر اول
    print("عنوان:", entry.title)
    print("لینک:", entry.link)
    print("تاریخ:", entry.published)
    print("خلاصه:", entry.summary[:150], "...")
    print("-"*50)