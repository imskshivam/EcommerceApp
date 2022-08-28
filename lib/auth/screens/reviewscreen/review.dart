// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewUi extends StatefulWidget {
  final String image;
  final String name;
  final String date;
  final String comments;
  final double rating;
  final Function ontap;
  final bool isless;
  const ReviewUi({
    Key? key,
    required this.image,
    required this.name,
    required this.date,
    required this.comments,
    required this.rating,
    required this.ontap,
    required this.isless,
  }) : super(key: key);

  @override
  State<ReviewUi> createState() => _ReviewUiState();
}

class _ReviewUiState extends State<ReviewUi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 2.0, bottom: 2.0, left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 45,
                width: 45,
                margin: EdgeInsets.only(right: 16),
                child: Image.network(
                  widget.image,
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(44.0)),
              ),
              Expanded(
                child: Text(
                  widget.name,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              RatingBar.builder(
                initialRating: widget.rating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemSize: 20,
                itemCount: 5,
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                widget.date,
                style: GoogleFonts.roboto(textStyle: TextStyle(fontSize: 12)),
              )
            ],
          ),
          SizedBox(
            width: 8,
          ),
          GestureDetector(
            child: Text(
              widget.comments,
              maxLines: widget.isless ? 100 : 3,
              overflow: widget.isless ? null : TextOverflow.ellipsis,
              style: TextStyle(fontSize: 13, color: Colors.grey[500]),
            ),
          )
        ],
      ),
    );
  }
}
