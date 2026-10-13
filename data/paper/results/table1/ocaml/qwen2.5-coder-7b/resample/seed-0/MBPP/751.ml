(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
let rec check_min_heap (arr : int list) : bool = 
  let size = List.length arr in
  let rec heapify i =
    let left = 2 * i + 1 in
    let right = 2 * i + 2 in
    let min_idx =
      if left < size && arr.(left) < arr.(i) then left else i
    in
    let min_idx =
      if right < size && arr.(right) < arr.(min_idx) then right else min_idx
    in
    if min_idx <> i then
      let tmp = arr.(i) in
      arr.(i) <- arr.(min_idx);
      arr.(min_idx) <- tmp;
      heapify min_idx
    else ()
  in
  if size <= 1 then true
  else (
    for i from size / 2 - 1 downto 0 do
      heapify i
    done;
    List.for_all (fun x -> x <= List.get (Array.of_list arr) (List.length arr)) arr
  )

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:21:11: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec check_min_heap (arr : int list) : bool = 
  let size = List.length arr in
  let rec heapify i =
    let left = 2 * i + 1 in
    let right = 2 * i + 2 in
    let min_idx =
      if left < size && arr.(left) < arr.(i) then left else i
    in
    let min_idx =
      if right < size && arr.(right) < arr.(min_idx) then right else min_idx
    in
    if min_idx <> i then
      let tmp = arr.(i) in
      arr.(i) <- arr.(min_idx);
      arr.(min_idx) <- tmp;
      heapify min_idx
    else ()
  in
  if size <= 1 then true
  else (
    for i = size / 2 - 1 downto 0 do
      heapify i
    done;
    List.for_all (fun x -> x <= List.get arr (size - 1)) arr
  )

