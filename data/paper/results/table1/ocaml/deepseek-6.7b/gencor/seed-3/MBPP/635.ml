
let rec heap_sort (iterable : int list) : int list =
  let rec heapify (lst : int list) (n : int) (i : int) : int list =
    let largest = ref i in
    let left = (i * 2) + 1 in
    let right = (i * 2) + 2 in
    if left < n && List.nth lst left > List.nth lst !largest then
      largest := left
    ;
    if right < n && List.nth lst right > List.nth lst !largest then
      largest := right
    ;
    if !largest != i then 
    begin
      let temp = List.nth lst i in
      lst.[i] < - List.nth lst !largest;
      lst.[ largest := i] < - temp;
      lst
    end
    ;
    heapify lst n left;
    heapify lst n right;
    lst
  in
  let lst = List.rev ( List.of_seq (List.to_seq iterable)) in
  let n = List.length lst in
  for i = (n/2) - 1 downto 0 do
    lst <- heapify lst n i
  done;
  for i = n - 1 downto 1 do
    let temp = List.nth lst 0 in
    lst.[ 0 ] < - List.nth lst i;
    lst [ i ] < - temp;
    lst <- heapify lst i 0;
  done;
  List.rev lst

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
