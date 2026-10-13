let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
  match subjectmarks with
  | [] -> []
  | _ -> let sorted = List.sort (fun (_,a) (_,b) -> compare b a) subjectmarks in 
    let rec separator l = 
      match l with 
      | [] -> [] 
      | h::t -> h :: (separator (List.filter (fun (n,_ ) -> String.compare (fst h) n <> 0) t)) 
    in separator sorted


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
