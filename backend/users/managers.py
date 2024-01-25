from django.contrib.auth.base_user import BaseUserManager


class AppUserManager(BaseUserManager):
    def create_user(self, email, password, **kwargs):
        email = self.normalize_email(email)
        user = self.model(email=email, **kwargs)
        user.set_password(password)
        user.save()
        return user

    def create_superuser(self, email, password, **kwargs):
        kwargs.setdefault("is_superuser", True)
        kwargs.setdefault("is_active", True)
        kwargs.setdefault("is_staff", True)
        superuser = self.create_user(email, password, **kwargs)
        superuser.save()
        return superuser
