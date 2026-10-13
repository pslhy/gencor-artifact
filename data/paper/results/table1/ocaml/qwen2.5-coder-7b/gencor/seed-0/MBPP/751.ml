
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
    for i = (size / 2) - 1 downto 0 do
      heapify i
    done;
    let rec verify_heap i =
      let left = 2 * i + 1 in
      let right = 2 * i + 2 in
      if left >= size then true
      else if right >= size then arr.(i) <= arr.(left)
      else arr.(i) <= arr.(left) && arr.(i) <= arr.(right) && verify_heap left && verify_heap right
    in
    verify_heap 0
  )

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given list represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-list-represents-a-binary-heap/ *)
