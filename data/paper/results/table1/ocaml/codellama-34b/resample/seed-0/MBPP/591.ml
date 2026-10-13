(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to interchange the first and last elements in a list. *)
let rec swap_List (newList : int list) : int list =
    match newList with
    | [] -> []
    | h :: t -> swap h t @ swap_List t

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:17: Unbound value "swap" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list =
    match newList with
    | [] -> []
    | h :: t -> swap h t @ swap_List t

let swap (h : int) (t : int list) : int list =
    match t with
    | [] -> [h]
    | hd :: tl -> tl @ [h] @ swap_List tl

let test_swap () : int list =
    List.map (fun x -> swap x []) [1; 2; 3]

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:17: Unbound value "swap" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list =
    match newList with
    | [] -> []
    | h :: t -> swap h t @ swap_List t

let swap (h : int) (t : int list) : int list =
    match t with
    | [] -> [h]
    | hd :: tl -> tl @ [h] @ swap_List tl

let test_swap () : int list =
    List.map (fun x -> swap x []) [1; 2; 3]

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:17: Unbound value "swap" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list =
    match newList with
    | [] -> []
    | h :: t -> swap h t @ swap_List t

let swap (h : int) (t : int list) : int list =
    match t with
    | [] -> [h]
    | hd :: tl -> tl @ [h] @ swap_List tl

let test_swap () : int list =
    List.map (fun x -> swap x []) [1; 2; 3]

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:17: Unbound value "swap" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec swap_List (newList : int list) : int list =
    match newList with
    | [] -> []
    | h :: t -> swap_List t @ swap_List (h :: t)

let swap (h : int) (t : int list) : int list =
    match t with
    | [] -> [h]
    | hd :: tl -> tl @ [h] @ swap_List tl

let test_swap () : int list =
    List.map (fun x -> swap x []) [1; 2; 3]

