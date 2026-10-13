let rec max_sum (arr : int list) : int =
  let len = List.length arr in
  if len < 3 then -1
  else
    let inc = Array.of_list (l_increasing arr) in
    let dec = Array.of_list (l_decreasing arr) in
    let dp = Array.make len 0 in
    dp.(0) <- inc.(0);
    dp.(1) <- max inc.(1) dec.(0);
    for i = 2 to len - 1 do
      dp.(i) <- max dp.(i - 1) (max inc.(i) dec.(i))
    done;
    dp.(len - 1)

and l_increasing (arr : int list) : int list =
  let len = List.length arr in
  let dp = Array.make len 1 in
  for i = 1 to len - 1 do
    if arr.((i - 1) mod len) < arr.(i mod len)
    then dp.(i) <- dp.(i - 1) + 1
  done;
  let max_len = Array.fold_left max 0 dp in
  let rec loop i len =
    if len = 0 then [] else l_increasing_subseq arr dp len @ loop (i - 1) (len - dp.(i))
  and l_increasing_subseq (arr : int list) (dp : int array) (len : int) : int list =
    if len = 0 then [] else arr.((i mod (List.length arr))) :: loop i (len - 1)
  in
  loop (Array.fold_left max 0 dp) max_len

and l_decreasing (arr : int list) : int list =
  let len = List.length arr in
  let dp = Array.make len 1 in
  for i = 1 to len - 1 do
    if arr.((i - 1) mod len) > arr.(i mod len)
    then dp.(i) <- dp.(i - 1) + 1
  done;
  let max_len = Array.fold_left max 0 dp in
  let rec loop i len =
    if len = 0 then [] else l_decreasing_subseq arr dp len @ loop (i - 1) (len - dp.(i))
  and l_decreasing_subseq (arr : int list) (dp : int array) (len : int) : int list =
    if len = 0 then [] else arr.((i mod (List.length arr))) :: loop i (len - 1)
  in
  List.rev (loop (Array.fold_left max 0 dp) max_len)

let () =
  let array_wrap = [10; 20; 6; 4; 5; 7; 8]; in
  let max = max_sum array_wrap in
  Printf.printf "%d\n" max


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
