(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list = 
  let rec reverse acc lst =
    match lst with
    | [] -> acc
    | x::xs when k > 0 -> reverse (x::acc) xs
    | _ -> acc
  in
  let reversed_part = reverse [] (List.take input k) in
  let rest = List.drop input k in
  List.append reversed_part rest

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:35: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list = 
  let rec reverse acc lst =
    match lst with
    | [] -> acc
    | x::xs when k > 0 -> reverse (x::acc) xs
    | _ -> acc
  in
  let reversed_part = reverse [] input in
  let rest = List.drop input k in
  List.append (List.take reversed_part k) rest

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:14: Unbound value "List.drop" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list = 
  let rec reverse acc lst =
    match lst with
    | [] -> acc
    | x::xs when k > 0 -> reverse (x::acc) xs
    | _ -> acc
  in
  let reversed_part = reverse [] input in
  let rest = List.tl (List.rev (List.drop input (List.length input - k))) in
  List.append (List.take reversed_part k) rest

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:9:33: Unbound value "List.drop" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list = 
  let rec reverse acc lst =
    match lst with
    | [] -> acc
    | x::xs when k > 0 -> reverse (x::acc) xs
    | _ -> acc
  in
  let reversed_part = reverse [] (List.take input k) in
  let rest = List.rev (List.tl (List.rev (List.drop input k))) in
  List.append reversed_part rest

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:35: Unbound value "List.take" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec reverse_Array_Upto_K (input : int list) (k : int) : int list = 
  let rec reverse acc lst =
    match lst with
    | [] -> acc
    | x::xs when k > 0 -> reverse (x::acc) xs
    | _ -> acc
  in
  let reversed_part = reverse [] (List.tl (List.rev (List.drop input (List.length input - k)))) in
  List.append (List.take reversed_part k) rest

