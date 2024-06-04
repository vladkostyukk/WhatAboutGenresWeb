"""
Routes and views for the bottle application.
"""

from bottle import route, view, template
from datetime import datetime
import json

@route('/')
@route('/home')
@view('home')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/contact')
@view('contact')
def contact():
    """Renders the contact page."""
    return dict(
        title='Contact',
        message='Your contact page.',
        year=datetime.now().year
    )

@route('/genre')
@view('genre')
def about():
    """Renders the genre page."""
    return dict(
        title='genre',
        message='Your application description page.',
        year=datetime.now().year
    )

@route('/active_users')
def active_users():  
    return template('active_users', title='Актив', year=datetime.now().year)