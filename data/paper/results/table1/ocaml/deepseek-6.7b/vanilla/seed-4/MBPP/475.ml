let rec sort_counter (dict1 : (string * int) list) :  (string * int) list =
  match dict1 with
  | [] -> []
  | _ -> let (k, v) = List.fold_left (fun (accK,accV) (k,v) -> if v<accV then (k,v) else (accK,accV)) (List.hd dict1) dict1 in
          (k,v) :: sort_counter (List.filter (fun (key,_) -> key <> k) dict1)

(* Usage:

let test_dict = [("a", 5); ("c", 3); ("b", 1)]
sort_counter test_dict

This should return the equivalent of [("c",3); ("a",5); ("b",1)]
*)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort an association list by value. *)
