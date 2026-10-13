let rec average_tuple (nums : int list list) : float list = 
  List.map (fun sublist -> 
    let sum = List.foldi (fun acc i n -> acc + n) 0 sublist in
    let length = List.length sublist in
    float sum /. float length) nums


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which takes a lists of lists and returns the average value for each sublist as a list. *)
