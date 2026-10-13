let rec find_First_Missing (array : int list) : int =
    match array with
    | [] -> 1
    | h::t when h <= 0 -> find_First_Missing t
    | h::t -> if List.hd t = h || List.hd t = h+1 then find_First_Missing t
              else h + 1

let rec find_Smallest_Missing (array : int list) : int =
    match array with
    | [] -> 0
    | [_] -> 1
    | h::t -> if List.hd t = h then find_Smallest_Missing t
              else find_First_Missing array

let main lst =
    find_Smallest_Missing lst


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the smallest missing number from a sorted list of natural numbers. *)
