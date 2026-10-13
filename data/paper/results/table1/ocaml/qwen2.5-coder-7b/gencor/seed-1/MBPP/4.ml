
let rec heap_queue_largest (nums : int list) (n : int) : int list = 
  let rec build_heap lst =
    let rec sift_up i =
      if i = 0 then lst
      else
        let parent = (i - 1) / 2 in
        if List.nth lst parent < List.nth lst i then
          let temp = List.nth lst i in
          let rec swap j = 
            let tmp = List.nth lst j in
            lst.[j] := temp;
            temp := tmp;
          in
          swap i;
          sift_up parent
        else lst
    in
    List.fold_left (fun h x -> sift_up (List.length h) (x :: h)) [] lst
  in
  let rec extract_max n heap =
    if n = 0 then []
    else
      let max = List.hd heap in
      let sift_down i heap_size =
        let child = if 2 * i + 2 < heap_size then
                      if List.nth heap (2 * i + 1) < List.nth heap (2 * i + 2) then 2 * i + 2 else 2 * i + 1
                    else 2 * i + 1
        in
        if child < heap_size && List.nth heap i < List.nth heap child then
          let temp = List.nth heap child in
          let rec swap j = 
            let tmp = List.nth heap j in
            heap.[j] := temp;
            temp := tmp;
          in
          swap child;
          (swap i; child) |> (fun j -> 2 * j + 1) |> (fun k -> if k < heap_size then k else k - 1) |> (fun l -> if l = child then l else child) |> (fun m -> if i < m then m else i) |> (fun n -> if n < min










infinity
            1. 2
















































seek_in
            1. 2










1. 2







set_binary_mode_in
                1 2



stderr




seek_in
stderr
    1. 2


stderr
exit
 1. 2
snd






string_of_int
decr
            1. 2
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd
snd


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
