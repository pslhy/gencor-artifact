(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     This function takes a list l and returns a list l' such that *)
(*     l' is identical to l in the odd indicies, while its values at the even indicies are equal *)
(*     to the values of the even indicies of l, but sorted. *)
(*     >>> sort_even [1; 2; 3] *)
(*     [1; 2; 3] *)
(*     >>> sort_even [5; 6; 3; 4] *)
(*     [3; 6; 5; 4] *)
let rec sort_even (l : int list) : int list = 
    let rec help_sort Even acc = function
    | [] -> acc
    | hd::tl -> help_sort tl (hd::acc)
    | hd::hd::tl when hd < hd -> help_sort tl (hd::hd::acc) 
    | _::tl -> help_sort Even acc
    

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:8:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_even (l : int list) : int list =
    let rec help_sort Even acc = function
    | [] -> acc
    | hd::tl -> help_sort tl (hd::acc)
    | hd::hd::tl when hd < hd -> help_sort tl (hd::hd::acc) 
    | _::tl -> help_sort Even acc

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_even (l : int list) : int list =
    let rec help_sort Even acc = function
    | [] -> acc
    | hd::tl -> help_sort tl (hd::acc)
    | hd::hd::tl when hd < hd -> help_sort tl (hd::hd::acc) 
    | _::tl -> help_sort Even acc

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_even (l : int list) : int list =
    let rec help_sort Even acc = function
    | [] -> acc
    | hd::tl when hd mod 2 = 0 -> help_sort Even acc tl
    | hd::tl -> help_sort Odd acc tl
    | _::tl -> help_sort Even acc
and help_sort Odd acc = function
    | [] -> acc
    | hd::tl when hd mod 2 = 1 -> help_sort Odd acc tl
    | hd::tl -> help_sort Even acc tl
    | [] -> []

let sort_list l =
    let small_acc = [] in
    let large_acc = [] in
    List.iter (fun x -> if x mod 2 = 0 then small_acc else large_acc) l;
    help_sort Even small_acc @ help_sort Odd large_acc

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:13:1: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_even (l : int list) : int list =
    let rec help_sort Even acc = function
    | [] -> acc
    | hd::tl when hd mod 2 = 0 -> help_sort Even acc tl
    | hd::tl -> help_sort Odd acc tl
    | [] -> []

let rec sort_odd (l : int list) : int list =
    let rec help_sort Odd acc = function
    | [] -> acc
    | hd::tl when hd mod 2 = 1 -> help_sort Odd acc tl
    | hd::tl -> help_sort Even acc tl
    | [] -> []

let sort_list l =
    let small_acc = [] in
    let large_acc = [] in
    List.iter (fun x -> if x mod 2 = 0 then small_acc else large_acc) l;
    help_sort Even small_acc @ help_sort Odd large_acc

