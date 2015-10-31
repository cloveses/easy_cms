from cmstools import make_pw
from bson.objectid import ObjectId
from cms import News,OrdUser

def login(name,password):
    password = make_pw(name,password)
    res = OrdUser.objects(name=name).filter(password=password)
    if res:
        return res.first()
    return False

def reg_user(name,password):
    password = make_pw(name,password)
    ou = OrdUser()
    ou.name = name
    ou.password = password
    ou.save()
    return ou

def ch_pw(oid,name,opw,npw):
    opw = make_pw(name,opw)
    ou = OrdUser.objects(id=ObjectId(oid)).filter(password=opw)
    if ou:
        ou = ou.first()
        ou.password = make_pw(name,npw)
        ou.save()
        return True
    return False

def get_news(nid):
    news = News.objects(id=ObjectId(nid))
    return news.first() if news else None