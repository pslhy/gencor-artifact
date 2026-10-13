(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest number that can be formed with the given list of digits. *)
let rec find_Max_Num (arr : int list) : int =
  match arr with
  | [] -> -1
  | _ ->
    let open List in
    arr |> sort_unstable ~cmp:(fun a b -> cmp_string (String.of_int a) (String.of_int b))
      |> rev |> String.concat "" |> int_of_string

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Unbound value "sort_unstable" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Max_Num (arr : int list) : int =
  match arr with
  | [] -> -1
  | _ ->
    let open List in
    arr |> sort_unstable ~cmp:(fun a b -> cmp_desc (string_of_int a) (string_of_int b))
      |> rev |> String.concat "" |> int_of_string

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:12: Unbound value "sort_unstable" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Max_Num (arr : int list) : int =
  match arr with
  | [] -> -1
  | _ ->
    let open List in
    let rev_sorted_array = sort_unstable ~cmp:(compare) arr |> rev in
    List.fold_left (fun acc x -> acc * 10 + x) 0 rev_sorted_array

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:28: Unbound value "sort_unstable" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Max_Num (arr : int list) : int =
  match List.rev (List.sort_unstable arr) with
  | [] -> -1
  | hd::tl -> hd * (find_Max_Num tl)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:19: Unbound value "List.sort_unstable" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec find_Max_Num (arr : int list) : int =
  List.fold_left (fun x y -> y * (10 ** String.length (string_of_int x) ) + x) 0 (List.sort arr ~cmp:(fun a b -> compare b a))

