from setuptools import find_packages, setup

PKG = "hyscheme"
__version__ = 0.1

install_requires = ["hy",]
long_description = """This library provides common functions found in
Scheme dialects for Hylang. Hylang is Lisp flavored Python."""

setup (
    name=PKG,
    version=__version__,
    install_requires=install_requires,
    packages=find_packages(exclude=['tests*']),
    package_data={
        'hyscheme': ['*.hy'],
    },
    author="Vasudev Kamath",
    author_email="kamathvasudev@gmail.com",
    description="Scheme functions for Hylang",
    long_description=long_description,
    license="Expat",
    platforms=['any'],
    classifiers=[
        "Development Status :: 4 - Beta",
        "Intended Audience :: Developers",
        "License :: DFSG approved",
        "License :: OSI Approved :: MIT License",
        "Programming Language :: Lisp",
        "Programming Language :: Python",
        "Programming Language :: Python :: 2",
        "Programming Language :: Python :: 2.6",
        "Programming Language :: Python :: 2.7",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 3.2",
        "Programming Language :: Python :: 3.3",
        "Topic :: Software Development :: Libraries",
    ]
)
