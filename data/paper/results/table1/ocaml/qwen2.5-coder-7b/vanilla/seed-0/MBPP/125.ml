let rec find_length (string : string) : int = 
  let rec helper (s : string) (z : int) (o : int) (m : int) : int =
    match s with
    | "" -> max m (o - z)
    | '0' :: rest -> helper rest (z + 1) o m
    | '1' :: rest -> helper rest z (o + 1) (max m (o - z))
    | _ -> failwith "Invalid input"
  in helper string 0 0 (-1)



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string. *)
