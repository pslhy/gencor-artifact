let rec histogram (test : string) : (string * int) list =
  let rec loop (test: string) (index: int) (counter: (string * int) list) : (string * int) list =
    match test with
    | "" -> counter
    | _ ->
        let c = String.get test index in 
        let updated_counter =
          if List.mem_assoc (String.make 1 c) counter then
            List.map (fun (x, y) -> if x = String.make 1 c then (x, y+1) else (x, y)) counter
          else (String.make 1 c, 1)::counter in
        loop test (index + 1) updated_counter
  in
  let sorted_counter = List.sort (fun (_, x) (_, y) -> compare y x) (loop test 0 []) in
  let max_count = List.hd sorted_counter |> snd in
  List.filter (fun (_, count) -> count = max_count) sorted_counter


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
