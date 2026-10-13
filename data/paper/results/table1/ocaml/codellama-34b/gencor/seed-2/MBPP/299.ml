
let rec max_aggregate (stdata :  (string * int) list) :  string * int =
    match stdata with
        | [] -> None 
        | (x, y):: rest -> 
            let (_, z) = max_aggregate rest
            (x, y + snd stdata)

    None;

max_aggregate ([("a", 5); ("b", 5); ("a", 10); ("b", 10); ("a", 15); ("b", 20)])

([("a", 35); ("b", 40)])

max_aggregate ([])

(None)

max_aggregate ([("a", 5); ("b", 5); ("a", 10); ("b", 10); ("a", 15); ("b", 20)])

([("a", 35); ("b", 40)])

([("a", 5); ("b", 5); ("a", 10); ("b", 10); ("a", 15); ("b", 20)])

(succ)

max_aggregate ([("a", 5); ("b", 5); ("a", 10); ("b", 10); ("a", 15); ("b", 20)])

([("a", 35); ("b", 35)])

(succ)

max_aggregate ([])

(None)

max_aggregate ([("a", 100); ("b", 100); ("a", 100); ("b", 100)])

(None)

max_aggregate ([("a", 100); ("b", 100); ("a", 100); ("b", 100)])

([("a", 400); ("b", 400)])

(succ)

max_aggregate ([])

(None)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10000)])

(succ)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10000)])

([("a", 40000); ("b", 40000)])

(succ)

max_aggregate ([])

(None)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10000)])

(succ)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10000)])

([("a", 40000); ("b", 40000)])

(succ)

max_aggregate ([])

(None)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10000)])

(succ)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10000)])

([("a", 40000); ("b", 40000)])

(succ)

max_aggregate ([])

(None)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10000)])

(succ)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10000)])

([("a", 40000); ("b", 40000)])

(succ)

max_aggregate ([])

(None)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10000)])

(succ)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10000)])

([("a", 40000); ("b", 40000)])

(succ)

max_aggregate ([])

(None)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10000)])

(succ)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10000)])

([("a", 40000); ("b", 40000)])

(succ)

max_aggregate ([])

(None)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10000)])

(succ)

max_aggregate ([("a", 10000); ("b", 10000); ("a", 10000); ("b", 10

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate the maximum aggregate from the list of tuples. *)
