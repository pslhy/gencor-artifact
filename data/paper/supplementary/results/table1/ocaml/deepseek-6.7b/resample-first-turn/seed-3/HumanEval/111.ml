let rec histogram (test : string) : (string * int) list =
  let strList = Str.split (Str.regexp " ") test in
  let rec loop countList remainingList =
    match remainingList with
    | [] -> countList
    | h::t ->
        let newCountList =
          try
            let (_, oldCount) = List.find (fun (x, _) -> x = h) countList in
            List.map
              (fun (a, b) -> if a = h then (a, b + 1) else (a, b))
              countList
          with Not_found -> (h, 1) :: countList
        in loop newCountList t
  in
  let countList = loop [] strList in
  let maxCount = List.fold_left (fun acc (_, b) -> max acc b) 0 countList in
  List.filter (fun (_, b) -> b = maxCount) countList


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a string representing a space separated lowercase letters, return an association list *)
(*     of the letter with the most repetition and containing the corresponding count. *)
(*     If several letters have the same occurrence, return all of them. *)
(*     Example: *)
(*     >>> histogram "a b c" *)
(*     [("a", 1); ("b", 1); ("c", 1)] *)
(*     >>> histogram "a b b a" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "a b c a b" *)
(*     [("a", 2); ("b", 2)] *)
(*     >>> histogram "b b b b a" *)
(*     [("b", 4)] *)
(*     >>> histogram "" *)
(*     [] *)
