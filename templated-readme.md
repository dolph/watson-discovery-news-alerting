[![Build Status](https://travis-ci.org/IBM/watson-discovery-news-alerting.svg?branch=master)](https://travis-ci.org/IBM/watson-discovery-news-alerting)

# Watson Discovery News Alerting

In this developer journey, we will build a Node.js web application that will
use the Watson Discovery Service to access Watson Discovery News.

Watson Discovery News is a default data collection that is associated with
the Watson Discovery Service. It is a dataset of primarily English language
news sources that is updated continuously, with approximately 300,000 new
articles and blogs added daily.

The focus of this journey is to monitor a product's marketplace life-cycle
using Watson's Discovery service to intelligently alert when a product's
stance in the marketplace has changed. Users can recieve periodic email
alerts about a product or brand and how they're perceived in the News.

Alert tracking can be set up for the following areas:

* The product
* The brand
* Related products and brands
* Positive or negative product sentiment
* Stock prices

The journey highlights the steps required to build a front-end management
interface to search Watson News and a back-end service which periodically
sends alerts out related to customizable queries.

![](https://raw.githubusercontent.com/dolph/watson-discovery-news-alerting/master/doc/source/images/architecture.png)

## Flow
1. The user interacts with the backend server via the app UI. The frontend
app UI uses React to render search results and can reuse all of the views
that are used by the backend for server side rendering. The frontend is
using watson-react-components and is responsive.
1. User input is processed and routed to the backend server, which is
responsible for server side rendering of the views to be displayed on the
browser. The backend server is written using express and uses
express-react-views engine to render views written using React.
1. The backend server stores subscription information in a Cloudant NonSQL
database for product tracking.
1. The backend server sends user requests to the Watson Discovery Service. It
acts as a proxy server, forwarding queries from the frontend to the Watson
Discovery Service API while keeping sensitive API keys concealed from the
user.
1. The Watson Discovery Service queries the Watson News Collection for
articles related to the product.
1. The backend server sends periodic updates to email.

## With Watson
Want to take your Watson app to the next level? Looking to leverage Watson Brand assets? Join the [With Watson](https://www.ibm.com/watson/with-watson) program which provides exclusive brand, marketing, and tech resources to amplify and accelerate your Watson embedded commercial solution.

# Included components

* [Watson Discovery](https://www.ibm.com/watson/developercloud/discovery.html): A cognitive search and content analytics engine for applications to identify patterns, trens, and actionable insights.
* [Cloudant NoSQL DB for Bluemix](https://console.bluemix.net/docs/services/Cloudant/cloudant.html#overview): A fully managed data layer designed for modern web and mobile applications that leverages a flexible JSON schema.

# Featured technologies

* [Node.js](https://nodejs.org/en/) - An asynchronous event driven JavaScript runtime, designed to build scalable applications
* [React](https://facebook.github.io/react/) - Javascript library for building User Interfaces
* [Express](https://expressjs.com) - A popular and minimalistic web framework for creating API and Web server
* [Yarn](https://yarnpkg.com) - Fast, reliable and secure dependency manager for node.js

# Watch the Video

[![](https://img.youtube.com/vi/zFl-2FybDdY/maxresdefault.jpg)](https://youtu.be/zFl-2FybDdY)

# Steps

1. [Clone the repo](#clone-the-repo)
1. [Create Watson Services with IBM Bluemix](#create-watson-services-with-ibm-bluemix)



## Clone the repo

Clone the `watson-discovery-news-alerting` locally. In a terminal, run:

```
$ git clone https://github.com/ibm/watson-discovery-news-alerting
```

## Create Watson Services with IBM Bluemix

Create the following service:

* [**Watson
  Discovery**](https://console.ng.bluemix.net/catalog/services/discovery) -
  name the service `wdna-discovery`
* [**Cloudant NoSQL
  DB**](https://console.bluemix.net/catalog/services/cloudant-nosql-db) -
  name the service `wdna-cloudant`


# Sample output

![](https://raw.githubusercontent.com/dolph/watson-discovery-news-alerting/master/doc/source/images/sample-output.png)

# License

[Apache 2.0](LICENSE)