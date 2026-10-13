let rec max_difference (test_list :  (int * int) list) : int =
  if List.length test_list = 0 then
    0
  else
    let max_diff = ref 0 in
    let rec loop (head, tail) =
      if List.isEmpty tail then
        !max_diff
      else
        let current = head :: tail in
        let v = fst current in
        let w = snd current in
        let diff = w - v in
        max_diff := max !max_diff diff;
        loop (tail)
    loop test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the maximum difference between available pairs in the given tuple list. *)
