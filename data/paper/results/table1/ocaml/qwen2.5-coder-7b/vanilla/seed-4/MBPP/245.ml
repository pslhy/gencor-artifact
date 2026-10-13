let rec max_sum (arr : int list) : int = 
  let n = List.length arr in
  let ascending = Array.make n 0 in
  let descending = Array.make n 0 in
  
  (* Fill the array with ascending sums *)
  for i = 0 to n - 1 do
    ascending.(i) <- arr.(i);
    for j = 0 to i - 1 do
      if arr.(i) > arr.(j) && ascending.(i) < ascending.(j) + arr.(i) then
        ascending.(i) <- ascending.(j) + arr.(i)
    done
  done;
  
  (* Fill the array with descending sums *)
  for i = n - 1 downto 0 do
    descending.(i) <- arr.(i);
    for j = n - 1 downto i + 1 do
      if arr.(i) > arr.(j) && descending.(i) < descending.(j) + arr.(i) then
        descending.(i) <- descending.(j) + arr.(i)
    done
  done;
  
  (* Combine both arrays to find the maximum bitonic sum *)
  let max_bitonic = ref min_int in
  for i = 0 to n - 1 do
    max_bitonic := max !max_bitonic (ascending.(i) + descending.(i) - arr.(i))
  done;
  
  !max_bitonic


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function that takes a list and finds the maximum sum of a bitonic subsequence for the given list, where a sequence is bitonic if it is first increasing and then decreasing. *)
