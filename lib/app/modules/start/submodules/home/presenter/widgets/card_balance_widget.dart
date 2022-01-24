import 'package:capitalplace/app/core/constants/app_constants.dart';
import 'package:capitalplace/app/core/widgets/icon_button_widget.dart';
import 'package:flutter/material.dart';

class CardBalanceWidget extends StatefulWidget {
  final String balance;

  const CardBalanceWidget({
    Key? key,
    required this.balance,
  }) : super(key: key);

  @override
  _CardBalanceWidgetState createState() => _CardBalanceWidgetState();
}

class _CardBalanceWidgetState extends State<CardBalanceWidget> {
  bool _balanceVisibility = false;

  void _toogleBalanceVisibility() {
    setState(() {
      _balanceVisibility = !_balanceVisibility;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColorConstants.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 2,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(
              20.0,
              20.0,
              20.0,
              10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Seu saldo",
                  style: AppTypographyConstants.body,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Row(
                  children: [
                    _balanceVisibility
                        ? Row(
                            children: [
                              Text(
                                "R\$",
                                style: AppTypographyConstants.body,
                              ),
                              const SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                widget.balance,
                                style: AppTypographyConstants.body.copyWith(
                                  fontSize: 22.0,
                                ),
                              ),
                            ],
                          )
                        : Text(
                            "***********",
                            style: AppTypographyConstants.body,
                          ),
                    const SizedBox(
                      width: 8.0,
                    ),
                    IconButtonWidget(
                      iconData: _balanceVisibility
                          ? Icons.visibility_off
                          : Icons.visibility,
                      size: 22.0,
                      onTap: _toogleBalanceVisibility,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(
              20.0,
              10.0,
              20.0,
              10.0,
            ),
            decoration: BoxDecoration(
              color: AppColorConstants.primary.withOpacity(.8),
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(8.0),
                bottomLeft: Radius.circular(8.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "VER EXTRATO",
                  style: AppTypographyConstants.caption.copyWith(
                    color: AppColorConstants.white,
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: AppColorConstants.white,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
