(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to split a list at the nth eelment and add the first part to the end. *)
let rec split_Arr (l : int list) (n : int) : int list = 
    (* base case: ignore if n <= 0 *)
    let rec loop (l : int list) (n : int) : int list = 
        (* base case: n <= 0 or empty list *)
        if n <= 0 or l = [] then []
        (* recursive case: add current element and recurse on the rest of the list *)
        else (List.hd l) :: (loop (List.tl l) (n-1) ) 
    in
      loop l n

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:5:19: Unbound value "\#or" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec split_Arr (l : int list) (n : int) : int list =
    if n < 0 then
        invalid_arg "#Rank out of bounds"
    else if n = 0 then
        []
    else
        match l with
        | [] -> []
        | hd :: tl -> hd :: (split_Arr tl (n-1))

