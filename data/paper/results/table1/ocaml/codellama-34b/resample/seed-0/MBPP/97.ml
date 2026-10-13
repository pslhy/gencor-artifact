(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find frequency of each element in a flattened list of lists, returned in an association list. *)
let rec frequency_lists (list1 : int list list) : (int * int) list =
    match list1 with
    | [] -> []
    | h :: t -> 
        let (l, m) = frequency_list h in 
        (l, m + 1) :: frequency_lists t

let rec frequency_list (list1 : int list) : (int * int) list =
    match list1 with
    | [] -> []
    | h :: t -> 
        let (l, m) = frequency_list t in 
        (h, 1) :: (l, m + 1)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "frequency_list" *)
(*     Hint: Did you mean "frequency_lists"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec frequency_lists (list1 : int list list) : (int * int) list =
    match list1 with
    | [] -> []
    | h :: t -> 
        let (l, m) = frequency_list h in 
        (l, m + 1) :: frequency_lists t

let rec frequency_list (list1 : int list) : (int * int) list =
    match list1 with
    | [] -> []
    | h :: t -> 
        let (l, m) = frequency_list t in 
        (h, 1) :: (l, m + 1)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:22: Unbound value "frequency_list" *)
(*     Hint: Did you mean "frequency_lists"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec frequency_lists (list1 : int list list) : (int * int) list =
    match list1 with
    | [] -> []
    | h :: t -> 
        let (l, m) = frequency_lists h in 
        (l, m + 1) :: frequency_lists t

let rec frequency_lists (list1 : int list) : (int * int) list =
    match list1 with
    | [] -> []
    | h :: t -> 
        let (l, m) = frequency_lists t in 
        (h, 1) :: (l, m + 1)

