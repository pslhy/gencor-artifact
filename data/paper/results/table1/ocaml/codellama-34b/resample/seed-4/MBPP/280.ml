(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function that takes in a list and element and returns a tuple containing a boolean that indicates if the element is in the list and the index position of the element (or -1 if the element is not found). *)
let rec sequential_search (dlist : int list) (item : int) :  bool * int = 
    (* Declare and initialize tuple with false and -1 *)
    let found = (false, -1) in
    let rec search lst idx =
        (* Base case: Empty list *)
        match list with
        | [] -> found
        | hd :: tl ->
            (* recursion step: Match element with item *)
            if hd = item then
                (* Update tuple with true and index *)
                found = (true, idx)
            else 
                (* Update index and recurse on remaining list *)
                search tl (idx + 1)
    in
    (* Start search with input list and index of 0 *)
    search dlist 0

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:15: Unbound value "list" *)
(*     Hint: Did you mean "dlist" or "lst"? *)
(*     Please regenerate the code, taking these errors into account. *)
let rec sequential_search (dlist : int list) (item : int) :  bool * int = 
    let found = (false, -1) in
    let rec search lst idx =
        match lst with
        | [] -> found
        | hd :: tl ->
            if hd = item then
                (true, idx)
            else
                search tl (idx + 1)
    in
    search dlist 0

