let rec minSubArraySum (nums : int list) : int =
  if List.length nums <= 1 then
    nums
    |> List.fold_left (+) 0
  else
    List.map (fun (le, ri) -> minSubArraySum (List.slice le ri nums)) (range 1 (List.length nums))
    |> List.min
;;

let rec range (i : int) (j : int) =
  if i > j then [] else i :: (range (i + 1) j)
;;

let nums = [2; 3; 4; 1; 2; 4] in
let le = List.hd nums in
let ri = List.length nums in
minSubArraySum (List.slice le ri nums)



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Given a list of integers nums, find the minimum sum of any non-empty sub-list *)
(*     of nums. *)
(*     Example *)
(*     >>> minSubArraySum [2; 3; 4; 1; 2; 4] *)
(*     1 *)
(*     >>> minSubArraySum [(-1); (-2); (-3)] *)
(*     (-6) *)
