(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Your task is to implement a function that will simplify the expression *)
(*     x * n. The function returns true if x * n evaluates to a whole number and false *)
(*     otherwise. Both x and n, are string representation of a fraction, and have the following format, *)
(*     <numerator>/<denominator> where both numerator and denominator are positive whole numbers. *)
(*     You can assume that x, and n are valid fractions, and do not have zero as denominator. *)
(*     >>> simplify "1/5" "5/1" *)
(*     true *)
(*     >>> simplify "1/6" "2/1" *)
(*     false *)
(*     >>> simplify "7/10" "10/2" *)
(*     false *)
let rec simplify (x : string) (n : string) : bool =
    let xarray = explode x in
    let yarray = explode x in
    let xnum = list.hd xarray in
    let xden = list.tl xarray in
    let ynum = list.hd yarray in
    let yden = list.tl yarray in
    let result = if xnum / yden < xden / ynum then
        true
    else
        false in
    result

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:18: Unbound value "explode" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec simplify (x : string) (n : string) : bool =
    let xarray = Str.split (Str.regexp "/") x in
    let yarray = Str.split (Str.regexp "/") n in
    let xnum = int_of_string (List.hd xarray) in
    let xden = int_of_string (List.hd (List.tl xarray)) in
    let ynum = int_of_string (List.hd yarray) in
    let yden = int_of_string (List.hd (List.tl yarray)) in
    let result = if xnum / yden < xden / ynum then
        true
    else
        false in
    result

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:18: Unbound module "Str" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec simplify (x : string) (n : string) : bool =
    let xarray = String.split_on_char '/' x in
    let yarray = String.split_on_char '/' n in
    let xnum = int_of_string (List.hd xarray) in
    let xden = int_of_string (List.hd (List.tl xarray)) in
    let ynum = int_of_string (List.hd yarray) in
    let yden = int_of_string (List.hd (List.tl yarray)) in
    let result = if xnum / yden < xden / ynum then
        true
    else
        false in
    result

