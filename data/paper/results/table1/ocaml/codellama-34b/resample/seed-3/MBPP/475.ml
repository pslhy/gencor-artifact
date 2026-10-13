(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
let rec sort_counter (dict1 : (string * int) list) :  (string * int) list = 
    match dict1 with 
    | [] -> [] 
    | (str, x) :: xs -> 
        let smaller, equal, larger = List.partition (fun (_, y) -> y <= x) xs in
        let equal = (str, x) :: equal in
        let larger = sort_count dict2 in
        smaller @ equal @ larger
   

//Tests an association list and returns the value of the element at the given index.
let rec get_value list index =
    match list with
    | [] -> failwith "Index out of bounds"
    | (_, i) as h :: t -> if i = index then h else get_value t (index - 1)

//Tests an association list and returns true if the list has an odd length
let rec odd_length list =
    match list with
    | [] -> false
    | (_ :: t) -> not (odd_length t)

//Tests an association list and returns true if the list is sorted
let rec is_sorted list = 
    match list with
    | [] -> true
    | (_, y) :: (_, z) :: _  -> y <= z && is_sorted(list) 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:12: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sort_counter (dict1 : (string * int) list) :  (string * int) list = 
    let smaller, equal, larger = List.partition (fun (s1, y) -> y <= s1) dict1 in
    let small = sort_counter smaller in
    let equal = (dict1, s1) :: equal in
    let large = sort_counter larger in
    small @ equal @ large

