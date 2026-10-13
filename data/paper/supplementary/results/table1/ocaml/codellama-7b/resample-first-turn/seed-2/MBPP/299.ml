let rec max_aggregate (stdata :  (string * int) list) :  string * int =
 match stdata with
 | [] -> failwith "empty list"
 | h :: t ->
   let x = fst h in
   let y = snd h in
   match t with
   | [] -> (x,y)
   | h :: t ->
     let hx = fst h in
     if String.compare x hx = 1 then (x,y) else max_aggregate t
     in
 

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
