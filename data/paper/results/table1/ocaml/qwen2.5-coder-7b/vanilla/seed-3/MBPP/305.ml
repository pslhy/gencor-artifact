let rec start_withp (words : string list) :  string * string = 
  match words with
  | [] -> failwith "Not enough words starting with 'p'"
  | x::xs -> 
      match xs with
      | [] -> failwith "Not enough words starting with 'p'"
      | y::ys -> 
          if x.[0] = 'p' && y.[0] = 'p' then (x, y)
          else start_withp (y::ys)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return two words from a list of words starting with letter 'p'. *)
