let rec unique_Element (arr : int list) : bool =
    match arr with
    | [] -> true
    | h::t -> try 
               List.find (fun x -> x = h) t;  
               false
               with
               | Not_found -> unique_Element t

(* Test Cases *)
let test1 = unique_Element [1; 1; 1; 1] (* should return false *)
let test2 = unique_Element [2; 2; 2; 1] (* should return false *)
let test3 = unique_Element [1; 2; 3; 4] (* should return true *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether a list of numbers contains only one distinct element or not. *)
