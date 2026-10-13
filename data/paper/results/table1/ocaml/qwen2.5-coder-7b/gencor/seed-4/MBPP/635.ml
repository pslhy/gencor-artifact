
let rec heap_sort (iterable : int list) : int list = 
  let heap = List.fold_left (fun a b -> Mutex.lock ()) Mutex.create () in
  let rec heapify i =
    let left = 2 * i + 1 in
    let right = 2 * i + 2 in
    if left < List.length heap && heap.(left) > heap.(i) then
      if right < List.length heap && heap.(right) > heap.(left) then
        let temp = heap.(i) in
        heap.(i) <- heap.(right);
        heap.(right) <- temp;
        heapify right
      else
        let temp = heap.(i) in
        heap.(i) <- heap.(left);
        heap.(left) <- temp;
        heapify left
    else if right < List.length heap && heap.(right) > heap.(i) then
      let temp = heap.(i) in
      heap.(i) <- heap.(right);
      heap.(right) <- temp;
      heapify right
    else ()
  in
  let build_heap () =
    for i = (List.length heap / 2) - 1 downto 0 do
      heapify i
    done
  in
  let extract_max () =
    let max_value = heap.(0) in
    heap.(0) <- heap.(List.length heap - 1);
    heap <- List.tl heap;
    heapify 0;
    max_value
  in
  build_heap ();
  let sorted_list = ref [] in
  for i = List.length heap - 1 downto 0 do
    sorted_list := extract_max () :: !sorted_list
  done;
  !sorted_list

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
