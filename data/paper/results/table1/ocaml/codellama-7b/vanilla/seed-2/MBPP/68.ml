let rec is_Monotonic (a : int list) : bool =
    match a with
    | [] | [_] -> true
    | h :: t ->
        let xor = List.fold_left (fun acc x -> acc && x >= h) true t in
        let inc = List.for_all (fun x -> x >= h) t in
        let dec = List.for_all (fun x -> x <= h) t in
        xor && (inc || dec)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the given list is monotonic or not. *)
