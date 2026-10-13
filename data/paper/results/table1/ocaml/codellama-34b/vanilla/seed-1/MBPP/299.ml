let rec max_aggregate (stdata :  (string * int) list) :  string * int =
    let acc = stdata
              |> List.map (fun (name,value) -> (name,value))
              |> List.fold_left (fun acc (name,value) -> min acc (name,value)) in
    (fst max_aggregate, snd max_aggregate)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
