import 'package:flutter/material.dart';

import '../../../theme/colors.dart';
import '../home/widget/home_section_book_header.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<StatefulWidget> createState() => _FilterBottomSheet();
}

class _FilterBottomSheet extends State<FilterBottomSheet> {
  int _currentButtonSelected = 1;
  double _sliderValue = 0;

  void toggleButtonState(int positionSelected) {
    setState(() {
      _currentButtonSelected = positionSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppBar(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
          title: const Center(child: Text("Filter")),
          actions: [
            InkWell(
              onTap: () {
                setState(() {
                  _currentButtonSelected = 1;
                  _sliderValue = 0;
                });
              },
              child: const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text("Reset"),
              ),
            )
          ],
        ),
        Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),
              const Text(
                "Type",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  HomeFilterButton(
                    isSelected: _currentButtonSelected == 1,
                    title: "Paper Back",
                    onClick: () => {toggleButtonState(1)},
                  ),
                  const SizedBox(width: 9),
                  HomeFilterButton(
                    isSelected: _currentButtonSelected == 2,
                    title: "Hardcover",
                    onClick: () => {toggleButtonState(2)},
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  const Text(
                    "Price Range",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  Text("0-${_sliderValue.round()}\$")
                ],
              ),
              const SizedBox(height: 16),
              SliderTheme(
                  data: SliderTheme.of(context).copyWith(
                    overlayShape: SliderComponentShape.noOverlay,
                    overlayColor: AppColors.btnColors,
                    thumbColor: AppColors.btnColors,
                    activeTrackColor: AppColors.btnColors,
                  ),
                  child: Slider(
                      value: _sliderValue,
                      max: 100,
                      min: 0,
                      onChanged: (newValue) => {
                            setState(() {
                              _sliderValue = (newValue / 5).round() * 5;
                            })
                      }))
            ],
          ),
        ),
      ],
    );
  }
}
