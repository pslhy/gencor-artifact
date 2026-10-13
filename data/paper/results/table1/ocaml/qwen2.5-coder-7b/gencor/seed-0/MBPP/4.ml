
let rec heap_queue_largest (nums : int list) (n : int) : int list = 
  let rec heapify lst i len = 
    let largest = ref i in
    let l = 2 * i + 1 in
    let r = 2 * i + 2 in
    if l < len && List.nth lst l > List.nth lst !largest then largest := l;
    if r < len && List.nth lst r > List.nth lst !largest then largest := r;
    if !largest <> i then 
      let temp = List.nth lst i in
      List.nth (List.mapi (fun x y -> if x = !largest then temp else y) lst) i := List.nth lst !largest;
      List.nth (List.mapi (fun x y -> if x = !largest then y else temp) lst) !largest := temp;
      heapify (List.mapi (fun x y -> if x = !largest then temp else y) lst) !largest len;
    lst in
  let build_heap lst len = 
    for i = (len / 2) - 1 downto 0 do
      lst <- heapify lst i len;
    done;
    lst in
  let rec extract_max heap acc count = 
    if count = 0 then acc
    else 
      let max_val = List.hd heap in
      let new_heap = List.tl heap in
      let heap' = heapify new_heap 0 (List.length new_heap) in
      extract_max heap' (max_val :: acc) (count - 1) in
  if n <= 0 then [] else 
    let heap = build_heap nums (List.length nums) in
    extract_max heap [] n

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
