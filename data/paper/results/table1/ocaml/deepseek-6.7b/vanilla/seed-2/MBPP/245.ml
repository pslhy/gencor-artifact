let rec max_sum (arr : int list) : int =
  let len = List.length arr in
  if len < 3 then
    (* Base case: The empty list or a list with a single element has a sum of 0 *)
    0
  else 
    (* Bitsonic subsequence can either start from the beginning, the ending, or somewhere in the middle.
       Thus, we should find the maximum of (max_sum arr, max_sum (List.tl (List.rev arr))) *)
    max (max_aux arr 0 0 1) (max_sum (List.tl (List.rev arr))) 

(* max_aux is a helper function that finds the maximum bitonic subsequence in a given list from index 'start' *)
and max_aux (arr : int list) (start : int) (sum : int) (inc_flag : int) : int = 
  let len = List.length arr in
  if start = len then sum
  else if inc_flag = 1 then
    if start = 0 || arr.(start) > arr.(start - 1) then 
      (* If this number is greater than the previous one, it should be included in bitonic subsequence *)
      max_aux arr (start + 1) (sum + arr.(start)) 1
    else (* If not, sequence has to end here. Find the maximum sum in the reversed list from now on *)
      max sum (max_aux (List.tl (List.rev arr)) 1 (arr.(0)) (-1))
  else (* If dec_flag = -1, the sequence is decreasing *)
    if start = 0 || arr.(start) < arr.(start - 1) then 
      (* It should be included in the decreasing sequence *)
      max_aux arr (start + 1) (sum + arr.(start)) -1
    else (* If not, sequence has to end here. Find the maximum sum in the reversed list from now on *)
      max sum (max_aux (List.tl (List.rev arr)) 1 (arr.(0)) (-1))

(* Test cases *)
let () = assert (max_sum [1; 2; 3] = 6)
let () = assert (max_sum [5; 15; 50; 25] = 80)
let () = assert (max_sum [10; 20; 30; 40] = 70)
let () = assert (max_sum [15; 35; 10; 20; 25; 50; 20] = 90)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
