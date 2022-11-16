import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:fashion_hub/componets/container.dart';
import 'package:fashion_hub/data/app_colors.dart';
import 'package:fashion_hub/screens/Home/Categories/filter_screen.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../data/appdata.dart';
import '../screens/Home/Categories/catagoty_item_screen.dart';
import '../screens/Home/home_screen.dart';


class DropDownList extends StatefulWidget {
  const DropDownList({Key? key}) : super(key: key);

  @override
  State<DropDownList> createState() => _DropDownListState();
}

class _DropDownListState extends State<DropDownList> {
  String newvalue = "";

  @override
  Widget build(BuildContext context) {
    return CommonContainer(
      height: 785,
      width: double.infinity,
      child: Column(
        children: List.generate(
            catalog_subcatagory.length,
            (index) => ListTile(
                  onTap: () {
                    setState(() {
                      currunt_index = index;
                    },);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CatagoryItemScreen(),));
                  },
                  title: Text(catalog_subcatagory[index],
                      style: const TextStyle(color: Colors.black)),
              trailing: const Icon(Icons.chevron_right),
                )),
      ),
    );
  }
}



class CategoryDropDown extends StatefulWidget {
  const CategoryDropDown({Key? key}) : super(key: key);

  @override
  State<CategoryDropDown> createState() => _CategoryDropDownState();
}

class _CategoryDropDownState extends State<CategoryDropDown> {
  String newvalue = "";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isDense: true,
      items: [
        DropdownMenuItem(
            value: catagoryselector[0].toString(),
            child: Center(
                child: Text(
                  catagoryselector[0].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
        DropdownMenuItem(
            value: catagoryselector[1].toString(),
            child: Center(
                child: Text(
                  catagoryselector[1].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
        DropdownMenuItem(
            value: catagoryselector[2].toString(),
            child: Center(
                child: Text(
                  catagoryselector[2].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
        DropdownMenuItem(
            value: catagoryselector[3].toString(),
            child: Center(
                child: Text(
                  catagoryselector[3].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
        DropdownMenuItem(
            value: catagoryselector[4].toString(),
            child: Center(
                child: Text(
                  catagoryselector[4].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
        DropdownMenuItem(
            value: catagoryselector[5].toString(),
            child: Center(
                child: Text(
                  catagoryselector[5].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
      ],
      onChanged: (_value) {
        setState(() {
          newvalue = _value!;
        });
      },
      icon: Icon(FluentIcons.ios_arrow_rtl_24_filled,color: AppColors.greyColor,size: 16),
      style: TextStyle(fontSize: 12,color: AppColors.greyColor,fontFamily: 'PopinsRegular'),
      decoration: InputDecoration(
        hintText: 'Dresses',
        contentPadding: const EdgeInsets.only(bottom: 10,),
        hintStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey.shade800,fontSize: 12,fontFamily: 'PopinsRegular'),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.transparent)
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: Colors.transparent)
        ),
      ),
    );
  }
}


class BrandDropDown extends StatefulWidget {
  const BrandDropDown({Key? key}) : super(key: key);

  @override
  State<BrandDropDown> createState() => _BrandDropDownState();
}

class _BrandDropDownState extends State<BrandDropDown> {
  String newvalue = "";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isDense: true,
      items: [
        DropdownMenuItem(
            value: brandselector[0].toString(),
            child: Center(
                child: Text(
                  brandselector[0].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
        DropdownMenuItem(
            value: brandselector[1].toString(),
            child: Center(
                child: Text(
                  brandselector[1].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
        DropdownMenuItem(
            value: brandselector[2].toString(),
            child: Center(
                child: Text(
                  brandselector[2].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
        DropdownMenuItem(
            value: brandselector[3].toString(),
            child: Center(
                child: Text(
                  brandselector[3].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
        DropdownMenuItem(
            value: brandselector[4].toString(),
            child: Center(
                child: Text(
                  brandselector[4].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
      ],
      onChanged: (_value) {
        setState(() {
          newvalue = _value!;
        });
      },
      icon: Icon(FluentIcons.ios_arrow_rtl_24_filled,color: AppColors.greyColor,size: 16),
      style: TextStyle(fontSize: 12,color: AppColors.greyColor,fontFamily: 'PopinsRegular'),
      decoration: InputDecoration(
        hintText: 'Nova',
        contentPadding: const EdgeInsets.only(bottom: 10,),
        hintStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey.shade800,fontSize: 12,fontFamily: 'PopinsRegular'),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.transparent)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.transparent)
        ),
      ),
    );
  }
}


class SortDropDown extends StatefulWidget {
  const SortDropDown({Key? key}) : super(key: key);
  @override
  State<SortDropDown> createState() => _SortDropDownState();
}

class _SortDropDownState extends State<SortDropDown> {
  String newvalue = "";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      isDense: true,
      items: [
        DropdownMenuItem(
            value: sortselector[0].toString(),
            child: Center(
                child: Text(
                  sortselector[0].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
        DropdownMenuItem(
            value: sortselector[1].toString(),
            child: Center(
                child: Text(
                  sortselector[1].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
        DropdownMenuItem(
            value: sortselector[2].toString(),
            child: Center(
                child: Text(
                  sortselector[2].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
        DropdownMenuItem(
            value: sortselector[3].toString(),
            child: Center(
                child: Text(
                  sortselector[3].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
        DropdownMenuItem(
            value: sortselector[4].toString(),
            child: Center(
                child: Text(
                  sortselector[4].toString(),
                  style: const TextStyle(fontSize: 14),
                ))),
      ],
      onChanged: (_value) {
        setState(() {
          newvalue = _value!;
        });
      },
      icon: Icon(FluentIcons.ios_arrow_rtl_24_filled,color: AppColors.greyColor,size: 16),
      style: TextStyle(fontSize: 12,color: AppColors.greyColor,fontFamily: 'PopinsRegular'),
      decoration: InputDecoration(
        hintText: 'Featured',
        contentPadding: const EdgeInsets.only(bottom: 10,),
        hintStyle: TextStyle(fontWeight: FontWeight.w500,color: Colors.grey.shade800,fontSize: 12,fontFamily: 'PopinsRegular'),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.transparent)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: Colors.transparent)
        ),
      ),
    );
  }
}
