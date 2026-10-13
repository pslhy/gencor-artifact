let rec same_chars (s0 : string) (s1 : string) : bool = 
  let rec check_chars acc s =
    match s with 
    | "" -> List.for_all (fun c -> acc.(c) > 0) (List.init 256 (fun i -> i))
    | c::cs -> 
        let new_acc = Array.copy acc in
        new_acc.(Char.code c) <- new_acc.(Char.code c) - 1;
        check_chars new_acc cs
  in
  let acc0 = Array.make 256 0 in
  let acc1 = Array.make 256 0 in
  String.iter (fun c -> acc0.(Char.code c) <- acc0.(Char.code c) + 1) s0;
  String.iter (fun c -> acc1.(Char.code c) <- acc1.(Char.code c) + 1) s1;
  check_chars acc0 s1 && check_chars acc1 s0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Check if two words have the same characters. *)
(*     >>> same_chars "eabcdzzzz" "dddzzzzzzzddeddabc" *)
(*     true *)
(*     >>> same_chars "abcd" "dddddddabc" *)
(*     true *)
(*     >>> same_chars "dddddddabc" "abcd" *)
(*     true *)
(*     >>> same_chars "eabcd" "dddddddabc" *)
(*     false *)
(*     >>> same_chars "abcd" "dddddddabce" *)
(*     false *)
(*     >>> same_chars "eabcdzzzz" "dddzzzzzzzddddabc" *)
(*     false *)
