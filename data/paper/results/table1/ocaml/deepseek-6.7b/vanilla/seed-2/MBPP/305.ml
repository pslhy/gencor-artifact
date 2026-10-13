let rec start_withp (words : string list) :  string * string =
  match words with
  | [] -> raise Not_found (* raise exception if no words start with 'p' *)
  | x::xs -> if String.uppercase_ascii (String.make 1 (String.get x 0)) = "P"
            then (x, List.find (fun y -> String.uppercase_ascii (String.make 1 (String.get y 0)) = "P") xs)
            else start_withp xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return two words from a list of words starting with letter 'p'. *)
