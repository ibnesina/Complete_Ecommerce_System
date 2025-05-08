<div>
    <style>
        #blogs{
            padding: 40px 100px 0 100px;
        }

        #blogs .blog-box {
            /* display: flex; */
            align-items: center;
            width: 100%;
            margin-bottom: 70px;
        }

        #blogs .blog-img {
            /* width: 60%; */
            margin-right: 50px;
            align-content: center;
        }

        #blogs .blog-img img{
            /* width: 1000px; */
            width: 100%;
        }

        #blogs .blog-details {
            width: 50%;
            text-align: justify;
        }

        #blogs .blog-details h4{
            color: #555555;
            text-align: justify;
            font-weight: bold; 
        }

        #blogs .blog-details p{
            color: #555555;
            text-align: justify;
            padding: 20px 0 10px 0;
        }

        #page-header {
            background-image: url({{asset('asset/porduct-page-banner.png')}});
            width: 100%;
            height: 30vh;
            background-size: cover;
            display: flex;
            justify-content: center;
            text-align: center;
            flex-direction: column;
            padding: 14px;
        }

        #page-header h1{
			font-weight: bold;
			font-size: 48px;
            color: rgb(50, 49, 49);
		}

    </style>
    
        {{-- <section id="page-header">
            <h1>Competetion Details</h1>
            <p style="font-size: 24px; font-weight: 550; color: rgb(56, 38, 38);">Latest Competetions NEWS will be available here</p>
        </section> --}}

        <h2 style="font-weight: bold; padding: 50px 100px 20px 100px; ">{{$competetions->title}}</h2>
        <img src="{{asset('asset/competetions')}}/{{$competetions->image}}" alt="" style="padding: 0 100px 20px 100px; width: 1400px; height:500px">
        <p style="padding: 0px 100px 20px 100px; text-align: justify;">{{$competetions->description}}</p> 
        
</div>