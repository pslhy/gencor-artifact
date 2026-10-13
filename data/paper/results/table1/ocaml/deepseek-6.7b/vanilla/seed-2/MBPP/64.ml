let rec subject_marks (subjectmarks :  (string * int) list) :  (string * int) list =
  match subjectmarks with
  | [] -> []
  | (x,y)::t ->
      let (rest_sorted : (string * int) list) = subject_marks t in
      insert_ordered (x,y) rest_sorted

and insert_ordered (item : string * int) (xs : (string * int) list) : (string * int) list =
  match xs with
  | [] -> [item]
  | (x,y)::t when y >= (snd item) -> (x,y) :: (insert_ordered item t)
  | _ -> item :: xs


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of tuples using the second value of each tuple. *)
