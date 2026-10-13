(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether every even index contains even numbers of a given list. *)
let rec even_position (nums : int list) : bool = 
    (* base case: empty list with even length *)
    if nums = [] && nums.length mod 2 = 0 then true else 
    (* base case: empty list with odd length *)
    if nums = [] && nums.length mod 2 <> 0 then false else
    (* recursive case: check if the current element is even and the next element is in an even position *)
    nums.hd mod 2 = 0 && even_position (nums.tl) else false

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:50: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec even_position (nums : int list) : bool =
    match nums with
    | [] -> true
    | _ :: [] -> false
    | hd :: tl -> if hd mod 2 = 0 then even_position tl else false

