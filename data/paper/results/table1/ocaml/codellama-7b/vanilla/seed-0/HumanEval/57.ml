let rec monotonic (l : int list) : bool =
  match l with
  | [] -> true
  | hd :: tl ->
    if (List.rev tl |> List.hd) < hd then
      false
    else if hd < (List.rev tl |> List.hd) then
      false
    else
      monotonic (List.tl l)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Return true is list elements are monotonically increasing or decreasing. *)
(*     >>> monotonic [1; 2; 4; 20] *)
(*     true *)
(*     >>> monotonic [1; 20; 4; 10] *)
(*     false *)
(*     >>> monotonic [4; 1; 0; (-10)] *)
(*     true *)
