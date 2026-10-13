let rec largest_neg (list1 : int list) : int = 
  let rec find_largest_neg (list1 : int list) (max_neg : int option) : int option =
    match list1 with
    | [] -> max_neg
    | h::t -> 
        if h < 0 then
          find_largest_neg t (match max_neg with Some(v) -> Some(max v h) | None -> Some(h))
        else
          find_largest_neg t max_neg
  in
  match find_largest_neg list1 None with
  | Some(n) -> n
  | None -> failwith "No negative numbers in the list"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the largest negative number from the given list. *)
