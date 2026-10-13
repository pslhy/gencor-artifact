let rec start_withp (words : string list) :  string * string =
 match words with
  | [] -> failwith "No words matching predicate provided"
  | h :: t when String.starts_with h "p" -> (h, Utils.hd t)
  | _ :: t -> start_withp t


let () = print_endline start_withp ["pen"; "apple"; "pear"];;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return two words from a list of words starting with letter 'p'. *)
