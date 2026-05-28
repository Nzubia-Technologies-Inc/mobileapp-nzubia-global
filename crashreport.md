-------------------------------------
Translated Report (Full Report Below)
-------------------------------------
Process:             Runner [36364]
Path:                /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Runner
Identifier:          com.nzubia.global
Version:             1.0.2 (1)
Code Type:           ARM-64 (Native)
Role:                Foreground
Parent Process:      launchd_sim [2192]
Coalition:           com.apple.CoreSimulator.SimDevice.AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836 [1448]
Responsible Process: SimulatorTrampoline [2175]
User ID:             501

Date/Time:           2026-05-20 14:00:10.2119 -0400
Launch Time:         2026-05-20 14:00:02.6590 -0400
Hardware Model:      Mac16,1
OS Version:          macOS 26.5 (25F71)
Release Type:        User

Crash Reporter Key:  EC127E64-511A-1F6D-DA98-EC068ADF38E6
Incident Identifier: 037B8FE7-DB4B-4601-95B3-2D96719671DE

Sleep/Wake UUID:       BA2086AB-10DF-482D-B60B-E86007A56F48

Time Awake Since Boot: 34000 seconds
Time Since Wake:       32243 seconds

System Integrity Protection: enabled

Triggered by Thread: 0, Dispatch Queue: com.apple.main-thread

Exception Type:    EXC_CRASH (SIGABRT)
Exception Codes:   0x0000000000000000, 0x0000000000000000

Termination Reason:  Namespace SIGNAL, Code 6, Abort trap: 6
Terminating Process: Runner [36364]


Last Exception Backtrace:
0   CoreFoundation                	       0x1114ccde0 __exceptionPreprocess + 160
1   libobjc.A.dylib               	       0x107867438 objc_exception_throw + 72
2   CoreFoundation                	       0x1114cccfc -[NSException initWithCoder:] + 0
3   FirebaseCore                  	       0x100f3a680 +[FIRApp addAppToAppDictionary:] + 248 (FIRApp.m:307)
4   FirebaseCore                  	       0x100f3999c +[FIRApp configureWithName:options:] + 1204 (FIRApp.m:187)
5   Runner.debug.dylib            	       0x102a03da4 -[FLTFirebaseCorePlugin initializeAppAppName:initializeAppRequest:completion:] + 1560
6   Runner.debug.dylib            	       0x102a0a9c8 __SetUpFirebaseCoreHostApiWithSuffix_block_invoke + 312
7   Flutter                       	       0x11c988b1c __48-[FlutterBasicMessageChannel setMessageHandler:]_block_invoke + 160
8   Flutter                       	       0x11c4aa7b8 invocation function for block in flutter::PlatformMessageHandlerIos::HandlePlatformMessage(std::__fl::unique_ptr<flutter::PlatformMessage, std::__fl::default_delete<flutter::PlatformMessage>>) + 108
9   libdispatch.dylib             	       0x1101596a0 _dispatch_call_block_and_release + 24
10  libdispatch.dylib             	       0x110173e98 _dispatch_client_callout + 12
11  libdispatch.dylib             	       0x110190748 <deduplicated_symbol> + 24
12  libdispatch.dylib             	       0x110168d34 _dispatch_main_queue_drain + 1172
13  libdispatch.dylib             	       0x110168890 _dispatch_main_queue_callback_4CF + 40
14  CoreFoundation                	       0x11142ba94 __CFRUNLOOP_IS_SERVICING_THE_MAIN_DISPATCH_QUEUE__ + 12
15  CoreFoundation                	       0x11142ac6c __CFRunLoopRun + 1884
16  CoreFoundation                	       0x111425904 _CFRunLoopRunSpecificWithOptions + 496
17  GraphicsServices              	       0x11f85e9c0 GSEventRunModal + 116
18  UIKitCore                     	       0x152fac4cc -[UIApplication _run] + 776
19  UIKitCore                     	       0x1536a6910 UIApplicationMain + 120
20  UIKitCore                     	       0x152151820 0x151d90000 + 3938336
21  Runner.debug.dylib            	       0x1022bc6d0 static UIApplicationDelegate.main() + 128
22  Runner.debug.dylib            	       0x1022bc640 static AppDelegate.$main() + 44
23  Runner.debug.dylib            	       0x1022bc74c __debug_main_executable_dylib_entry_point + 28
24  dyld_sim                      	       0x100e4f0e4 start_sim + 20
25  dyld                          	       0x100c87e00 start + 6992

Thread 0 Crashed::  Dispatch queue: com.apple.main-thread
0   libsystem_kernel.dylib        	       0x110d0c88c __pthread_kill + 8
1   libsystem_pthread.dylib       	       0x110ed2338 pthread_kill + 264
2   libsystem_c.dylib             	       0x110afb984 abort + 116
3   libc++abi.dylib               	       0x10d3f87d0 __abort_message + 128
4   libc++abi.dylib               	       0x10d3e5134 demangling_terminate_handler() + 268
5   libobjc.A.dylib               	       0x10784319c _objc_terminate() + 124
6   Sentry                        	       0x10a750164 sentrycrashcm_cppexception_callOriginalTerminationHandler + 36 (SentryCrashMonitor_CPPException.cpp:155)
7   Sentry                        	       0x10a7509d4 CPPExceptionTerminate() + 1740 (SentryCrashMonitor_CPPException.cpp:255)
8   libc++abi.dylib               	       0x10d3f4790 std::__terminate(void (*)()) + 12
9   libc++abi.dylib               	       0x10d3f770c __cxxabiv1::failed_throw(__cxxabiv1::__cxa_exception*) + 32
10  libc++abi.dylib               	       0x10d3f76ec __cxa_throw + 88
11  libobjc.A.dylib               	       0x107867570 objc_exception_throw + 384
12  CoreFoundation                	       0x1114cccfc +[NSException raise:format:] + 124
13  FirebaseCore                  	       0x100f3a680 +[FIRApp addAppToAppDictionary:] + 248 (FIRApp.m:307)
14  FirebaseCore                  	       0x100f3999c +[FIRApp configureWithName:options:] + 1204 (FIRApp.m:187)
15  Runner.debug.dylib            	       0x102a03da4 -[FLTFirebaseCorePlugin initializeAppAppName:initializeAppRequest:completion:] + 1560
16  Runner.debug.dylib            	       0x102a0a9c8 __SetUpFirebaseCoreHostApiWithSuffix_block_invoke + 312
17  Flutter                       	       0x11c988b1c __48-[FlutterBasicMessageChannel setMessageHandler:]_block_invoke + 160
18  Flutter                       	       0x11c4aa7b8 invocation function for block in flutter::PlatformMessageHandlerIos::HandlePlatformMessage(std::__fl::unique_ptr<flutter::PlatformMessage, std::__fl::default_delete<flutter::PlatformMessage>>) + 108
19  libdispatch.dylib             	       0x1101596a0 _dispatch_call_block_and_release + 24
20  libdispatch.dylib             	       0x110173e98 _dispatch_client_callout + 12
21  libdispatch.dylib             	       0x110190748 <deduplicated_symbol> + 24
22  libdispatch.dylib             	       0x110168d34 _dispatch_main_queue_drain + 1172
23  libdispatch.dylib             	       0x110168890 _dispatch_main_queue_callback_4CF + 40
24  CoreFoundation                	       0x11142ba94 __CFRUNLOOP_IS_SERVICING_THE_MAIN_DISPATCH_QUEUE__ + 12
25  CoreFoundation                	       0x11142ac6c __CFRunLoopRun + 1884
26  CoreFoundation                	       0x111425904 _CFRunLoopRunSpecificWithOptions + 496
27  GraphicsServices              	       0x11f85e9c0 GSEventRunModal + 116
28  UIKitCore                     	       0x152fac4cc -[UIApplication _run] + 776
29  UIKitCore                     	       0x1536a6910 UIApplicationMain + 120
30  UIKitCore                     	       0x152151820 0x151d90000 + 3938336
31  Runner.debug.dylib            	       0x1022bc6d0 static UIApplicationDelegate.main() + 128
32  Runner.debug.dylib            	       0x1022bc640 static AppDelegate.$main() + 44
33  Runner.debug.dylib            	       0x1022bc74c __debug_main_executable_dylib_entry_point + 28
34  dyld_sim                      	       0x100e4f0e4 start_sim + 20
35  dyld                          	       0x100c87e00 start + 6992

Thread 1:

Thread 2:

Thread 3:

Thread 4::  Dispatch queue: io.sentry.session-replay.processing
0   libz.1.dylib                  	       0x100c215c8 0x100c20000 + 5576
1   libz.1.dylib                  	       0x100c23628 0x100c20000 + 13864
2   libz.1.dylib                  	       0x100c22470 deflate + 2388
3   ImageIO                       	       0x1071675e0 png_compress_IDAT + 276
4   ImageIO                       	       0x10716a3dc png_write_find_filter + 1144
5   ImageIO                       	       0x10712f1f0 _cg_png_write_row_sized + 1068
6   ImageIO                       	       0x1073a6dac PNGWritePlugin::writePNG(IIOImagePixelDataProvider*, IIODictionary*) + 1112
7   ImageIO                       	       0x107147c2c PNGWritePlugin::writeAll() + 948
8   ImageIO                       	       0x107147f18 PNGWritePlugin::WriteProc(void*, void*, void*, void*) + 172
9   ImageIO                       	       0x107173e60 IIOImageDestination::finalizeDestination(unsigned long long*) + 784
10  ImageIO                       	       0x1071781e0 CGImageDestinationFinalize + 192
11  UIKitCore                     	       0x15231fb6c _UIImageDataRepresentation + 448
12  Sentry                        	       0x10a87c85c SentryOnDemandReplay.addFrame(timestamp:maskedViewImage:forScreen:) + 892 (SentryOnDemandReplay.swift:88)
13  Sentry                        	       0x10a87c204 closure #1 in SentryOnDemandReplay.addFrameAsync(timestamp:maskedViewImage:forScreen:) + 92 (SentryOnDemandReplay.swift:82)
14  Sentry                        	       0x10a82e89c thunk for @escaping @callee_guaranteed @Sendable () -> () + 48
15  Sentry                        	       0x10a71604c __62-[_SentryDispatchQueueWrapperInternal dispatchAsyncWithBlock:]_block_invoke + 56 (_SentryDispatchQueueWrapperInternal.m:30)
16  libdispatch.dylib             	       0x1101596a0 _dispatch_call_block_and_release + 24
17  libdispatch.dylib             	       0x110173e98 _dispatch_client_callout + 12
18  libdispatch.dylib             	       0x110162724 _dispatch_lane_serial_drain + 984
19  libdispatch.dylib             	       0x1101631e8 _dispatch_lane_invoke + 396
20  libdispatch.dylib             	       0x11016dec0 _dispatch_root_queue_drain_deferred_wlh + 288
21  libdispatch.dylib             	       0x11016d608 _dispatch_workloop_worker_thread + 692
22  libsystem_pthread.dylib       	       0x110ecec28 _pthread_wqthread + 288
23  libsystem_pthread.dylib       	       0x110ecda28 start_wqthread + 8

Thread 5:: com.apple.uikit.eventfetch-thread
0   libsystem_kernel.dylib        	       0x110d04b70 mach_msg2_trap + 8
1   libsystem_kernel.dylib        	       0x110d15e5c mach_msg2_internal + 72
2   libsystem_kernel.dylib        	       0x110d0cc44 mach_msg_overwrite + 484
3   libsystem_kernel.dylib        	       0x110d04ef0 mach_msg + 20
4   CoreFoundation                	       0x11142b7c0 __CFRunLoopServiceMachPort + 156
5   CoreFoundation                	       0x11142a978 __CFRunLoopRun + 1128
6   CoreFoundation                	       0x111425904 _CFRunLoopRunSpecificWithOptions + 496
7   Foundation                    	       0x10b657a4c -[NSRunLoop(NSRunLoop) runMode:beforeDate:] + 208
8   Foundation                    	       0x10b657c68 -[NSRunLoop(NSRunLoop) runUntilDate:] + 60
9   UIKitCore                     	       0x152cdead4 -[UIEventFetcher threadMain] + 404
10  Foundation                    	       0x10b67cedc __NSThread__start__ + 716
11  libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
12  libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 6:

Thread 7::  Dispatch queue: io.sentry.default
0   libsystem_kernel.dylib        	       0x110d06788 __ulock_wait + 8
1   libdispatch.dylib             	       0x11015b190 _dlock_wait + 52
2   libdispatch.dylib             	       0x11015ae20 _dispatch_wait_on_address + 132
3   libdispatch.dylib             	       0x11015b4c8 _dispatch_group_wait_slow + 52
4   libswiftDispatch.dylib        	       0x10a654938 OS_dispatch_group.wait(wallTimeout:) + 20
5   Sentry                        	       0x10a87fe70 SentryOnDemandReplay.createVideoWith(beginning:end:) + 1920 (SentryOnDemandReplay.swift:204)
6   Sentry                        	       0x10a880fe8 @objc SentryOnDemandReplay.createVideoWith(beginning:end:) + 236
7   Sentry                        	       0x10a7cf4a8 -[SentrySessionReplayIntegration resumePreviousSessionReplay:] + 2280 (SentrySessionReplayIntegration.m:277)
8   Sentry                        	       0x10a7cea08 __108-[SentrySessionReplayIntegration setupWith:enableTouchTracker:enableViewRendererV2:enableFastViewRendering:]_block_invoke + 196 (SentrySessionReplayIntegration.m:177)
9   Sentry                        	       0x10a84cfa8 thunk for @escaping @callee_unowned @convention(block) (@unowned SentryEvent) -> (@autoreleased SentryEvent?) + 32
10  Sentry                        	       0x10a84ce90 thunk for @escaping @callee_guaranteed (@guaranteed SentryEvent) -> (@owned SentryEvent?) + 32
11  Sentry                        	       0x10a84d478 thunk for @escaping @callee_guaranteed (@in_guaranteed SentryEvent) -> (@out SentryEvent?) + 40
12  Sentry                        	       0x10a84d2b0 SentryGlobalEventProcessor.reportAll(_:) + 516 (SentryGlobalEventProcessor.swift:19)
13  Sentry                        	       0x10a84d518 @objc SentryGlobalEventProcessor.reportAll(_:) + 68
14  Sentry                        	       0x10a7324d0 -[SentryClient callEventProcessors:] + 124 (SentryClient.m:947)
15  Sentry                        	       0x10a731dc0 -[SentryClient prepareEvent:withScope:alwaysAttachStacktrace:isFatalEvent:] + 7628 (SentryClient.m:881)
16  Sentry                        	       0x10a72de28 -[SentryClient captureFatalEvent:withSession:withScope:] + 136 (SentryClient.m:353)
17  Sentry                        	       0x10a78eb5c -[SentryHub captureFatalEvent:withScope:] + 212 (SentryHub.m:254)
18  Sentry                        	       0x10a7c943c +[SentrySDKInternal captureFatalEvent:withScope:] + 120 (SentrySDKInternal.m:314)
19  Sentry                        	       0x10a7686d0 -[SentryCrashReportSink handleConvertedEvent:report:sentReports:] + 640 (SentryCrashReportSink.m:102)
20  Sentry                        	       0x10a768318 -[SentryCrashReportSink sendReports:onCompletion:] + 508 (SentryCrashReportSink.m:74)
21  Sentry                        	       0x10a76804c __52-[SentryCrashReportSink filterReports:onCompletion:]_block_invoke + 48 (SentryCrashReportSink.m:61)
22  Sentry                        	       0x10a82e9b8 thunk for @escaping @callee_unowned @convention(block) () -> () + 16
23  Sentry                        	       0x10a82e89c thunk for @escaping @callee_guaranteed @Sendable () -> () + 48
24  Sentry                        	       0x10a71604c __62-[_SentryDispatchQueueWrapperInternal dispatchAsyncWithBlock:]_block_invoke + 56 (_SentryDispatchQueueWrapperInternal.m:30)
25  libdispatch.dylib             	       0x1101596a0 _dispatch_call_block_and_release + 24
26  libdispatch.dylib             	       0x110173e98 _dispatch_client_callout + 12
27  libdispatch.dylib             	       0x110162724 _dispatch_lane_serial_drain + 984
28  libdispatch.dylib             	       0x1101631e8 _dispatch_lane_invoke + 396
29  libdispatch.dylib             	       0x11016dec0 _dispatch_root_queue_drain_deferred_wlh + 288
30  libdispatch.dylib             	       0x11016d608 _dispatch_workloop_worker_thread + 692
31  libsystem_pthread.dylib       	       0x110ecec28 _pthread_wqthread + 288
32  libsystem_pthread.dylib       	       0x110ecda28 start_wqthread + 8

Thread 8:: io.flutter.1.raster
0   libsystem_kernel.dylib        	       0x110d04b70 mach_msg2_trap + 8
1   libsystem_kernel.dylib        	       0x110d15e5c mach_msg2_internal + 72
2   libsystem_kernel.dylib        	       0x110d0cc44 mach_msg_overwrite + 484
3   libsystem_kernel.dylib        	       0x110d04ef0 mach_msg + 20
4   CoreFoundation                	       0x11142b7c0 __CFRunLoopServiceMachPort + 156
5   CoreFoundation                	       0x11142a978 __CFRunLoopRun + 1128
6   CoreFoundation                	       0x111425904 _CFRunLoopRunSpecificWithOptions + 496
7   Flutter                       	       0x11c4df084 fml::MessageLoopDarwin::Run() + 92
8   Flutter                       	       0x11c4d7b1c fml::MessageLoopImpl::DoRun() + 44
9   Flutter                       	       0x11c4dd72c std::__fl::__function::__func<fml::Thread::Thread(std::__fl::function<void (fml::Thread::ThreadConfig const&)> const&, fml::Thread::ThreadConfig const&)::$_0, std::__fl::allocator<fml::Thread::Thread(std::__fl::function<void (fml::Thread::ThreadConfig const&)> const&, fml::Thread::ThreadConfig const&)::$_0>, void ()>::operator()() + 184
10  Flutter                       	       0x11c4dd3f0 fml::ThreadHandle::ThreadHandle(std::__fl::function<void ()>&&)::$_0::__invoke(void*) + 36
11  libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
12  libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 9:: io.flutter.1.io
0   libsystem_kernel.dylib        	       0x110d04b70 mach_msg2_trap + 8
1   libsystem_kernel.dylib        	       0x110d15e5c mach_msg2_internal + 72
2   libsystem_kernel.dylib        	       0x110d0cc44 mach_msg_overwrite + 484
3   libsystem_kernel.dylib        	       0x110d04ef0 mach_msg + 20
4   CoreFoundation                	       0x11142b7c0 __CFRunLoopServiceMachPort + 156
5   CoreFoundation                	       0x11142a978 __CFRunLoopRun + 1128
6   CoreFoundation                	       0x111425904 _CFRunLoopRunSpecificWithOptions + 496
7   Flutter                       	       0x11c4df084 fml::MessageLoopDarwin::Run() + 92
8   Flutter                       	       0x11c4d7b1c fml::MessageLoopImpl::DoRun() + 44
9   Flutter                       	       0x11c4dd72c std::__fl::__function::__func<fml::Thread::Thread(std::__fl::function<void (fml::Thread::ThreadConfig const&)> const&, fml::Thread::ThreadConfig const&)::$_0, std::__fl::allocator<fml::Thread::Thread(std::__fl::function<void (fml::Thread::ThreadConfig const&)> const&, fml::Thread::ThreadConfig const&)::$_0>, void ()>::operator()() + 184
10  Flutter                       	       0x11c4dd3f0 fml::ThreadHandle::ThreadHandle(std::__fl::function<void ()>&&)::$_0::__invoke(void*) + 36
11  libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
12  libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 10:: io.flutter.1.profiler
0   libsystem_kernel.dylib        	       0x110d04b70 mach_msg2_trap + 8
1   libsystem_kernel.dylib        	       0x110d15e5c mach_msg2_internal + 72
2   libsystem_kernel.dylib        	       0x110d0cc44 mach_msg_overwrite + 484
3   libsystem_kernel.dylib        	       0x110d04ef0 mach_msg + 20
4   CoreFoundation                	       0x11142b7c0 __CFRunLoopServiceMachPort + 156
5   CoreFoundation                	       0x11142a978 __CFRunLoopRun + 1128
6   CoreFoundation                	       0x111425904 _CFRunLoopRunSpecificWithOptions + 496
7   Flutter                       	       0x11c4df084 fml::MessageLoopDarwin::Run() + 92
8   Flutter                       	       0x11c4d7b1c fml::MessageLoopImpl::DoRun() + 44
9   Flutter                       	       0x11c4dd72c std::__fl::__function::__func<fml::Thread::Thread(std::__fl::function<void (fml::Thread::ThreadConfig const&)> const&, fml::Thread::ThreadConfig const&)::$_0, std::__fl::allocator<fml::Thread::Thread(std::__fl::function<void (fml::Thread::ThreadConfig const&)> const&, fml::Thread::ThreadConfig const&)::$_0>, void ()>::operator()() + 184
10  Flutter                       	       0x11c4dd3f0 fml::ThreadHandle::ThreadHandle(std::__fl::function<void ()>&&)::$_0::__invoke(void*) + 36
11  libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
12  libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 11:: io.worker.1
0   libsystem_kernel.dylib        	       0x110d0802c __psynch_cvwait + 8
1   libsystem_pthread.dylib       	       0x110ed2b00 _pthread_cond_wait + 972
2   Flutter                       	       0x11c4affa4 std::__fl::condition_variable::wait(std::__fl::unique_lock<std::__fl::mutex>&) + 24
3   Flutter                       	       0x11c4d42c0 fml::ConcurrentMessageLoop::WorkerMain() + 140
4   Flutter                       	       0x11c4d4968 void* std::__fl::__thread_proxy[abi:nn210000]<std::__fl::tuple<std::__fl::unique_ptr<std::__fl::__thread_struct, std::__fl::default_delete<std::__fl::__thread_struct>>, fml::ConcurrentMessageLoop::ConcurrentMessageLoop(unsigned long)::$_0>>(void*) + 192
5   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
6   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 12:: io.worker.2
0   libsystem_kernel.dylib        	       0x110d0802c __psynch_cvwait + 8
1   libsystem_pthread.dylib       	       0x110ed2b00 _pthread_cond_wait + 972
2   Flutter                       	       0x11c4affa4 std::__fl::condition_variable::wait(std::__fl::unique_lock<std::__fl::mutex>&) + 24
3   Flutter                       	       0x11c4d42c0 fml::ConcurrentMessageLoop::WorkerMain() + 140
4   Flutter                       	       0x11c4d4968 void* std::__fl::__thread_proxy[abi:nn210000]<std::__fl::tuple<std::__fl::unique_ptr<std::__fl::__thread_struct, std::__fl::default_delete<std::__fl::__thread_struct>>, fml::ConcurrentMessageLoop::ConcurrentMessageLoop(unsigned long)::$_0>>(void*) + 192
5   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
6   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 13:: io.worker.3
0   libsystem_kernel.dylib        	       0x110d0802c __psynch_cvwait + 8
1   libsystem_pthread.dylib       	       0x110ed2b00 _pthread_cond_wait + 972
2   Flutter                       	       0x11c4affa4 std::__fl::condition_variable::wait(std::__fl::unique_lock<std::__fl::mutex>&) + 24
3   Flutter                       	       0x11c4d42c0 fml::ConcurrentMessageLoop::WorkerMain() + 140
4   Flutter                       	       0x11c4d4968 void* std::__fl::__thread_proxy[abi:nn210000]<std::__fl::tuple<std::__fl::unique_ptr<std::__fl::__thread_struct, std::__fl::default_delete<std::__fl::__thread_struct>>, fml::ConcurrentMessageLoop::ConcurrentMessageLoop(unsigned long)::$_0>>(void*) + 192
5   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
6   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 14:: io.worker.4
0   libsystem_kernel.dylib        	       0x110d0802c __psynch_cvwait + 8
1   libsystem_pthread.dylib       	       0x110ed2b00 _pthread_cond_wait + 972
2   Flutter                       	       0x11c4affa4 std::__fl::condition_variable::wait(std::__fl::unique_lock<std::__fl::mutex>&) + 24
3   Flutter                       	       0x11c4d42c0 fml::ConcurrentMessageLoop::WorkerMain() + 140
4   Flutter                       	       0x11c4d4968 void* std::__fl::__thread_proxy[abi:nn210000]<std::__fl::tuple<std::__fl::unique_ptr<std::__fl::__thread_struct, std::__fl::default_delete<std::__fl::__thread_struct>>, fml::ConcurrentMessageLoop::ConcurrentMessageLoop(unsigned long)::$_0>>(void*) + 192
5   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
6   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 15:: dart:io EventHandler
0   libsystem_kernel.dylib        	       0x110d0a6a4 kevent + 8
1   Flutter                       	       0x11c9466d4 dart::bin::EventHandlerImplementation::EventHandlerEntry(unsigned long) + 304
2   Flutter                       	       0x11c9627ac dart::bin::ThreadStart(void*) + 92
3   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
4   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 16:: DartWorker
0   libsystem_kernel.dylib        	       0x110d0802c __psynch_cvwait + 8
1   libsystem_pthread.dylib       	       0x110ed2b2c _pthread_cond_wait + 1016
2   Flutter                       	       0x11c9b0080 dart::ConditionVariable::WaitMicros(dart::Mutex*, long long) + 112
3   Flutter                       	       0x11cb18d84 dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*) + 512
4   Flutter                       	       0x11cb18ee4 dart::ThreadPool::Worker::Main(unsigned long) + 116
5   Flutter                       	       0x11caca214 dart::ThreadStart(void*) + 208
6   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
7   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 17:: DartWorker
0   libsystem_kernel.dylib        	       0x110d0802c __psynch_cvwait + 8
1   libsystem_pthread.dylib       	       0x110ed2b2c _pthread_cond_wait + 1016
2   Flutter                       	       0x11c9b0080 dart::ConditionVariable::WaitMicros(dart::Mutex*, long long) + 112
3   Flutter                       	       0x11cb18d84 dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*) + 512
4   Flutter                       	       0x11cb18ee4 dart::ThreadPool::Worker::Main(unsigned long) + 116
5   Flutter                       	       0x11caca214 dart::ThreadStart(void*) + 208
6   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
7   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 18:: DartWorker
0   libsystem_kernel.dylib        	       0x110d0802c __psynch_cvwait + 8
1   libsystem_pthread.dylib       	       0x110ed2b2c _pthread_cond_wait + 1016
2   Flutter                       	       0x11c9b0080 dart::ConditionVariable::WaitMicros(dart::Mutex*, long long) + 112
3   Flutter                       	       0x11ca0ffe0 dart::MutatorThreadPool::OnEnterIdleLocked(dart::MutexLocker*, dart::ThreadPool::Worker*) + 156
4   Flutter                       	       0x11cb18c00 dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*) + 124
5   Flutter                       	       0x11cb18ee4 dart::ThreadPool::Worker::Main(unsigned long) + 116
6   Flutter                       	       0x11caca214 dart::ThreadStart(void*) + 208
7   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
8   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 19:

Thread 20::  Dispatch queue: io.sentry.session-replay.asset-worker
0   libswiftCore.dylib            	       0x11493be84 swift_conformsToProtocolMaybeInstantiateSuperclasses(swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolDescriptor<swift::InProcess> const*, bool)::$_2::operator()((anonymous namespace)::ConformanceSection const&) const::'lambda'(swift::TargetProtocolConformanceDescriptor<swift::InProcess> const&)::operator()(swift::TargetProtocolConformanceDescriptor<swift::InProcess> const&) const + 64
1   libswiftCore.dylib            	       0x11493acbc swift_conformsToProtocolMaybeInstantiateSuperclasses(swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolDescriptor<swift::InProcess> const*, bool) + 3292
2   libswiftCore.dylib            	       0x114938b30 swift_conformsToProtocolWithExecutionContext + 68
3   libswiftCore.dylib            	       0x1148e6170 swift::_conformsToProtocol(swift::OpaqueValue const*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolDescriptorRef<swift::InProcess>, swift::TargetWitnessTable<swift::InProcess> const**, swift::ConformanceExecutionContext*) + 48
4   libswiftCore.dylib            	       0x1148e62b0 swift::_conformsToProtocolInContext(swift::OpaqueValue const*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolDescriptorRef<swift::InProcess>, swift::TargetWitnessTable<swift::InProcess> const**, bool) + 36
5   libswiftCore.dylib            	       0x1148ed838 _conformsToProtocols(swift::OpaqueValue const*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetExistentialTypeMetadata<swift::InProcess> const*, swift::TargetWitnessTable<swift::InProcess> const**, bool) + 172
6   libswiftCore.dylib            	       0x1148ec874 tryCastToConstrainedOpaqueExistential(swift::OpaqueValue*, swift::TargetMetadata<swift::InProcess> const*, swift::OpaqueValue*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetMetadata<swift::InProcess> const*&, swift::TargetMetadata<swift::InProcess> const*&, bool, bool, bool) + 56
7   libswiftCore.dylib            	       0x1148eb5fc tryCast(swift::OpaqueValue*, swift::TargetMetadata<swift::InProcess> const*, swift::OpaqueValue*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetMetadata<swift::InProcess> const*&, swift::TargetMetadata<swift::InProcess> const*&, bool, bool, bool) + 796
8   libswiftCore.dylib            	       0x1148eb05c swift_dynamicCast + 92
9   libswiftCore.dylib            	       0x114a63a4c _debugPrint_unlocked<A, B>(_:_:) + 264
10  libswiftCore.dylib            	       0x114afb044 _adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:) + 1292
11  libswiftCore.dylib            	       0x114a633f4 _print_unlocked<A, B>(_:_:) + 1032
12  Sentry                        	       0x10a884bf4 SentryPixelBuffer.append(image:presentationTime:) + 280 (SentryPixelBuffer.swift:33)
13  Sentry                        	       0x10a8852c8 protocol witness for SentryAppendablePixelBuffer.append(image:presentationTime:) in conformance SentryPixelBuffer + 80
14  Sentry                        	       0x10a91a74c SentryVideoFrameProcessor.processFrames(videoWriterInput:onCompletion:) + 1844 (SentryVideoFrameProcessor.swift:87)
15  Sentry                        	       0x10a882418 closure #1 in SentryOnDemandReplay.renderVideo(with:from:at:completion:) + 92 (SentryOnDemandReplay.swift:283)
16  Sentry                        	       0x10a82e89c thunk for @escaping @callee_guaranteed @Sendable () -> () + 48
17  AVFCore                       	       0x13759d190 -[AVAssetWriterInputMediaDataRequester requestMediaDataIfNecessary] + 60
18  libdispatch.dylib             	       0x1101596a0 _dispatch_call_block_and_release + 24
19  libdispatch.dylib             	       0x110173e98 _dispatch_client_callout + 12
20  libdispatch.dylib             	       0x110162724 _dispatch_lane_serial_drain + 984
21  libdispatch.dylib             	       0x1101631e8 _dispatch_lane_invoke + 396
22  libdispatch.dylib             	       0x11016dec0 _dispatch_root_queue_drain_deferred_wlh + 288
23  libdispatch.dylib             	       0x11016d608 _dispatch_workloop_worker_thread + 692
24  libsystem_pthread.dylib       	       0x110ecec28 _pthread_wqthread + 288
25  libsystem_pthread.dylib       	       0x110ecda28 start_wqthread + 8

Thread 21:

Thread 22:

Thread 23:

Thread 24:: DartWorker
0   libsystem_kernel.dylib        	       0x110d0802c __psynch_cvwait + 8
1   libsystem_pthread.dylib       	       0x110ed2b2c _pthread_cond_wait + 1016
2   Flutter                       	       0x11c9b0080 dart::ConditionVariable::WaitMicros(dart::Mutex*, long long) + 112
3   Flutter                       	       0x11cb18d84 dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*) + 512
4   Flutter                       	       0x11cb18ee4 dart::ThreadPool::Worker::Main(unsigned long) + 116
5   Flutter                       	       0x11caca214 dart::ThreadStart(void*) + 208
6   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
7   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 25:: DartWorker
0   libsystem_kernel.dylib        	       0x110d0802c __psynch_cvwait + 8
1   libsystem_pthread.dylib       	       0x110ed2b2c _pthread_cond_wait + 1016
2   Flutter                       	       0x11c9b0080 dart::ConditionVariable::WaitMicros(dart::Mutex*, long long) + 112
3   Flutter                       	       0x11cb18d84 dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*) + 512
4   Flutter                       	       0x11cb18ee4 dart::ThreadPool::Worker::Main(unsigned long) + 116
5   Flutter                       	       0x11caca214 dart::ThreadStart(void*) + 208
6   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
7   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 26:: DartWorker
0   libsystem_kernel.dylib        	       0x110d0802c __psynch_cvwait + 8
1   libsystem_pthread.dylib       	       0x110ed2b2c _pthread_cond_wait + 1016
2   Flutter                       	       0x11c9b0080 dart::ConditionVariable::WaitMicros(dart::Mutex*, long long) + 112
3   Flutter                       	       0x11cb18d84 dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*) + 512
4   Flutter                       	       0x11cb18ee4 dart::ThreadPool::Worker::Main(unsigned long) + 116
5   Flutter                       	       0x11caca214 dart::ThreadStart(void*) + 208
6   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
7   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 27:: com.apple.NSURLConnectionLoader
0   libsystem_kernel.dylib        	       0x110d04b70 mach_msg2_trap + 8
1   libsystem_kernel.dylib        	       0x110d15e5c mach_msg2_internal + 72
2   libsystem_kernel.dylib        	       0x110d0cc44 mach_msg_overwrite + 484
3   libsystem_kernel.dylib        	       0x110d04ef0 mach_msg + 20
4   CoreFoundation                	       0x11142b7c0 __CFRunLoopServiceMachPort + 156
5   CoreFoundation                	       0x11142a978 __CFRunLoopRun + 1128
6   CoreFoundation                	       0x111425904 _CFRunLoopRunSpecificWithOptions + 496
7   CFNetwork                     	       0x115995020 +[__CFN_CoreSchedulingSetRunnable _run:] + 368
8   Foundation                    	       0x10b67cedc __NSThread__start__ + 716
9   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
10  libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 28:
0   libsystem_kernel.dylib        	       0x110d07e5c __semwait_signal + 8
1   libsystem_c.dylib             	       0x110af8b8c nanosleep + 216
2   libsystem_c.dylib             	       0x110af8988 sleep + 48
3   Sentry                        	       0x10a73c678 monitorCachedData + 128 (SentryCrashCachedData.c:146)
4   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
5   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 29:: SentryCrash Exception Handler (Secondary)
0   libsystem_kernel.dylib        	       0x110d04b70 mach_msg2_trap + 8
1   libsystem_kernel.dylib        	       0x110d15e5c mach_msg2_internal + 72
2   libsystem_kernel.dylib        	       0x110d32ce8 thread_suspend + 104
3   Sentry                        	       0x10a751060 handleExceptions + 132 (SentryCrashMonitor_MachException.c:305)
4   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
5   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 30:: SentryCrash Exception Handler (Primary)
0   libsystem_kernel.dylib        	       0x110d04b70 mach_msg2_trap + 8
1   libsystem_kernel.dylib        	       0x110d15e5c mach_msg2_internal + 72
2   libsystem_kernel.dylib        	       0x110d0cc44 mach_msg_overwrite + 484
3   libsystem_kernel.dylib        	       0x110d04ef0 mach_msg + 20
4   Sentry                        	       0x10a751098 handleExceptions + 188 (SentryCrashMonitor_MachException.c:313)
5   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
6   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 31:: io.sentry.app-hang-tracker
0   libsystem_kernel.dylib        	       0x110d07e5c __semwait_signal + 8
1   libsystem_c.dylib             	       0x110af8b8c nanosleep + 216
2   Foundation                    	       0x10b67b890 +[NSThread sleepForTimeInterval:] + 148
3   Sentry                        	       0x10a8cf268 SentryThreadWrapper.sleep(forTimeInterval:) + 56 (SentryThreadWrapper.swift:3)
4   Sentry                        	       0x10a8cf2a8 @objc SentryThreadWrapper.sleep(forTimeInterval:) + 52
5   Sentry                        	       0x10a7194e4 -[SentryANRTrackerV1 detectANRs] + 1196 (SentryANRTrackerV1.m:108)
6   Foundation                    	       0x10b67cedc __NSThread__start__ + 716
7   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
8   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 32:: com.apple.coremedia.mediaprocessor.videocompression
0   libsystem_kernel.dylib        	       0x110d0802c __psynch_cvwait + 8
1   libsystem_pthread.dylib       	       0x110ed2b00 _pthread_cond_wait + 972
2   CoreMedia                     	       0x126cf8be0 WaitOnCondition + 68
3   CoreMedia                     	       0x126d8d258 FigSemaphoreWaitRelative + 136
4   MediaToolbox                  	       0x13668cef4 activitySchedulerOnThread + 92
5   CoreMedia                     	       0x126cf96b4 figThreadMain + 220
6   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
7   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 33:: io.sentry.SamplingProfiler
0   libsystem_kernel.dylib        	       0x110d04b70 mach_msg2_trap + 8
1   libsystem_kernel.dylib        	       0x110d15e5c mach_msg2_internal + 72
2   libsystem_kernel.dylib        	       0x110d0cc44 mach_msg_overwrite + 484
3   libsystem_kernel.dylib        	       0x110d04ef0 mach_msg + 20
4   Sentry                        	       0x10a7bffb0 sentry::profiling::(anonymous namespace)::samplingThreadMain(void*) + 380 (SentrySamplingProfiler.cpp:56)
5   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
6   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 34:: DartWorker
0   libsystem_kernel.dylib        	       0x110d0802c __psynch_cvwait + 8
1   libsystem_pthread.dylib       	       0x110ed2b2c _pthread_cond_wait + 1016
2   Flutter                       	       0x11c9b0080 dart::ConditionVariable::WaitMicros(dart::Mutex*, long long) + 112
3   Flutter                       	       0x11cb18d84 dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*) + 512
4   Flutter                       	       0x11cb18ee4 dart::ThreadPool::Worker::Main(unsigned long) + 116
5   Flutter                       	       0x11caca214 dart::ThreadStart(void*) + 208
6   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
7   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8

Thread 35:: DartWorker
0   libsystem_kernel.dylib        	       0x110d0802c __psynch_cvwait + 8
1   libsystem_pthread.dylib       	       0x110ed2b2c _pthread_cond_wait + 1016
2   Flutter                       	       0x11c9b0080 dart::ConditionVariable::WaitMicros(dart::Mutex*, long long) + 112
3   Flutter                       	       0x11cb18d84 dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*) + 512
4   Flutter                       	       0x11cb18ee4 dart::ThreadPool::Worker::Main(unsigned long) + 116
5   Flutter                       	       0x11caca214 dart::ThreadStart(void*) + 208
6   libsystem_pthread.dylib       	       0x110ed263c _pthread_start + 104
7   libsystem_pthread.dylib       	       0x110ecda34 thread_start + 8


Thread 0 crashed with ARM Thread State (64-bit):
    x0: 0x0000000000000000   x1: 0x0000000000000000   x2: 0x0000000000000000   x3: 0x0000000000000000
    x4: 0x000000010d3f8cb7   x5: 0x000000016f232ea0   x6: 0x000000000000006e   x7: 0x0000000000000000
    x8: 0x0000000100d21e00   x9: 0xd0dd39f39ee9e143  x10: 0x0000000000000002  x11: 0x00000000fffffffd
   x12: 0x0000000000000000  x13: 0x0000000000000000  x14: 0x0000000000000000  x15: 0x0000000000000000
   x16: 0x0000000000000148  x17: 0xffffffffb00007ff  x18: 0x0000000000000000  x19: 0x0000000000000006
   x20: 0x0000000000000103  x21: 0x0000000100d21ee0  x22: 0x0000000107880000  x23: 0x00000001101bce40
   x24: 0x00000001101bce40  x25: 0x0000000359e4dcc0  x26: 0x0000000359e4e1c0  x27: 0x0000000000000000
   x28: 0x0000000000000114   fp: 0x000000016f232e10   lr: 0x0000000110ed2338
    sp: 0x000000016f232df0   pc: 0x0000000110d0c88c cpsr: 0x40000000
   far: 0x0000000000000000  esr: 0x56000080 (Syscall)

Binary Images:
       0x100bc8000 -        0x100bcbfff com.nzubia.global (1.0.2) <127542f1-3e8e-3c73-bb0a-a67322e7493f> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Runner
       0x100e44000 -        0x100e93fff dyld_sim (*) <ba544d9a-46ab-3c59-a00f-aba1479d2079> /Volumes/VOLUME/*/dyld_sim
       0x1022b8000 -        0x102cfffff Runner.debug.dylib (*) <188ac848-158e-3958-80a2-569d9b1cefce> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Runner.debug.dylib
       0x100bf0000 -        0x100bf3fff libSystem.B.dylib (*) <35bca977-0843-3658-ab06-30cde1ba559e> /Volumes/VOLUME/*/libSystem.B.dylib
       0x101008000 -        0x101093fff libc++.1.dylib (*) <fd646c4c-99c5-3828-8199-3a66a48ff1a1> /Volumes/VOLUME/*/libc++.1.dylib
       0x101304000 -        0x1014abfff libsqlite3.dylib (*) <af1b9a79-62ce-378f-a26f-7010b58d32e7> /Volumes/VOLUME/*/libsqlite3.dylib
       0x100c20000 -        0x100c2ffff libz.1.dylib (*) <95c9d6e9-9db3-3036-9573-fd45580f28fb> /Volumes/VOLUME/*/libz.1.dylib
       0x100c04000 -        0x100c07fff com.apple.avfoundation (2.0) <0ff6234d-03bc-33b2-9b31-ba9d1a7fbbc9> /Volumes/VOLUME/*/AVFoundation.framework/AVFoundation
       0x101b38000 -        0x101e3bfff com.apple.AVKit (1.0) <7c33496a-7cb0-3fce-aa91-d4332760e705> /Volumes/VOLUME/*/AVKit.framework/AVKit
       0x100c14000 -        0x100c17fff com.apple.Accelerate (1.11) <676b8a16-2fca-3aeb-877b-974bf500d52a> /Volumes/VOLUME/*/Accelerate.framework/Accelerate
       0x103688000 -        0x1038ebfff com.apple.contacts (1.0) <3129802c-e5c5-3035-a77a-647bbaa46d4e> /Volumes/VOLUME/*/Contacts.framework/Contacts
       0x103bf4000 -        0x103f6ffff com.apple.CoreData (120) <e932c246-1408-30cd-8df0-f6a8edf2e39c> /Volumes/VOLUME/*/CoreData.framework/CoreData
       0x104b90000 -        0x105297fff com.apple.CoreGraphics (2.0) <faa5a64f-fc68-3944-9052-d412e88b8c43> /Volumes/VOLUME/*/CoreGraphics.framework/CoreGraphics
       0x1054f8000 -        0x105993fff com.apple.CoreImage (19.0.0) <cb5d4257-a9da-3c24-a892-4b53c6c04279> /Volumes/VOLUME/*/CoreImage.framework/CoreImage
       0x104234000 -        0x1044e3fff com.apple.corelocation (3075.0.8) <438b9ca3-9602-3367-90e2-8a0d745cc6c7> /Volumes/VOLUME/*/CoreLocation.framework/CoreLocation
       0x1045bc000 -        0x104803fff com.apple.CoreTelephony (113) <5cb798f6-345a-319a-a808-85db8b76c949> /Volumes/VOLUME/*/CoreTelephony.framework/CoreTelephony
       0x105cc8000 -        0x105eb7fff com.apple.CoreText (877.4.0.7) <384d2572-6e61-33b4-8cbc-fffcb002a1d2> /Volumes/VOLUME/*/CoreText.framework/CoreText
       0x1014f4000 -        0x10158bfff org.cocoapods.DKImagePickerController (4.3.9) <8c93dbe0-22f9-3d84-8704-473c0ac1917b> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/DKImagePickerController.framework/DKImagePickerController
       0x101674000 -        0x1016f7fff org.cocoapods.DKPhotoGallery (0.0.19) <18bd689d-4815-34ca-b8b6-05c3cc64153f> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/DKPhotoGallery.framework/DKPhotoGallery
       0x100de0000 -        0x100df3fff org.cocoapods.FBLPromises (2.4.0) <7e54145f-73ad-358c-bb1f-55572c172ae9> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/FBLPromises.framework/FBLPromises
       0x100c54000 -        0x100c57fff org.cocoapods.FirebaseAppCheckInterop (12.13.0) <430df71a-76b6-3c75-9690-dd326d50d0d5> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/FirebaseAppCheckInterop.framework/FirebaseAppCheckInterop
       0x1063c0000 -        0x10654ffff org.cocoapods.FirebaseAuth (12.13.0) <4e4532ba-2813-38b4-8327-634c7541f233> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/FirebaseAuth.framework/FirebaseAuth
       0x100da8000 -        0x100dabfff org.cocoapods.FirebaseAuthInterop (12.13.0) <2e71cb4c-8711-382c-ac74-f36e177feea6> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/FirebaseAuthInterop.framework/FirebaseAuthInterop
       0x100f38000 -        0x100f4bfff org.cocoapods.FirebaseCore (12.13.0) <77072767-33a0-3a92-b6b3-441cc7692877> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/FirebaseCore.framework/FirebaseCore
       0x100dbc000 -        0x100dbffff org.cocoapods.FirebaseCoreExtension (12.13.0) <3ff2767c-2fbe-3fdd-99ef-ef6869be9461> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/FirebaseCoreExtension.framework/FirebaseCoreExtension
       0x101114000 -        0x10113bfff org.cocoapods.FirebaseCoreInternal (12.13.0) <e7db18e8-7413-3470-91e3-91c6715d4fc1> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/FirebaseCoreInternal.framework/FirebaseCoreInternal
       0x10196c000 -        0x1019ebfff org.cocoapods.FirebaseFirestore (12.13.0) <3441578d-2994-38a2-9fee-4761f79f53bc> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/FirebaseFirestore.framework/FirebaseFirestore
       0x1078b0000 -        0x107dcbfff org.cocoapods.FirebaseFirestoreInternal (12.13.0) <2b37a003-e84b-3f46-9fce-8abdc2b22a57> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/FirebaseFirestoreInternal.framework/FirebaseFirestoreInternal
       0x100fb4000 -        0x100fcffff org.cocoapods.FirebaseInstallations (12.13.0) <92314b47-2c2d-38a5-8a22-05e5ae539dc5> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/FirebaseInstallations.framework/FirebaseInstallations
       0x10121c000 -        0x10125ffff org.cocoapods.FirebaseMessaging (12.13.0) <bdbd6db5-41d1-3800-89b3-ebbef22207b0> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/FirebaseMessaging.framework/FirebaseMessaging
       0x101864000 -        0x1018abfff org.cocoapods.FirebaseSharedSwift (12.13.0) <edf5a176-1a38-30bd-acfc-1db8f1b3092b> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/FirebaseSharedSwift.framework/FirebaseSharedSwift
       0x10ad68000 -        0x10bb23fff com.apple.Foundation (6.9) <2cc9fce0-08f9-3a0d-8a2f-6db229462de5> /Volumes/VOLUME/*/Foundation.framework/Foundation
       0x1017b4000 -        0x1017e3fff com.apple.GLKit (129) <8bc4b97a-2fe0-314e-a6c1-c670f6b3f289> /Volumes/VOLUME/*/GLKit.framework/GLKit
       0x10118c000 -        0x1011dbfff org.cocoapods.GTMSessionFetcher (3.5.0) <e9a7c217-771a-314e-9dcf-b785fafc60f8> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/GTMSessionFetcher.framework/GTMSessionFetcher
       0x1021ec000 -        0x10221bfff org.cocoapods.GoogleDataTransport (10.1.0) <d86ce0de-3109-3d33-9522-758978324294> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/GoogleDataTransport.framework/GoogleDataTransport
       0x100f6c000 -        0x100f8bfff org.cocoapods.GoogleUtilities (8.1.0) <f26d3363-d1f1-328f-a50c-6d5f31460907> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/GoogleUtilities.framework/GoogleUtilities
       0x106fdc000 -        0x1074bbfff com.apple.ImageIO (3.3.0) <3f851f82-f2ef-3eb4-8ab8-5556ea0e05e9> /Volumes/VOLUME/*/ImageIO.framework/ImageIO
       0x1089d4000 -        0x108be7fff com.apple.Metal (373.2) <da3bed8b-f22e-3ab0-b0a3-57217aaefa94> /Volumes/VOLUME/*/Metal.framework/Metal
       0x1012a8000 -        0x1012bbfff com.onesignal.OneSignalCore (1.0) <1a6cd696-a474-3207-8795-f3286a170522> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/OneSignalCore.framework/OneSignalCore
       0x100f00000 -        0x100f0bfff com.onesignal.OneSignalExtension (1.0) <c20669bd-8fbb-3c98-ad7e-583a467ae8ff> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/OneSignalExtension.framework/OneSignalExtension
       0x100e14000 -        0x100e27fff com.onesignal.OneSignal-Dynamic (1.0) <8449aef3-02a4-3966-91ad-30eb2c9a979c> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/OneSignalFramework.framework/OneSignalFramework
       0x102180000 -        0x1021a7fff com.onesignal.OneSignalInAppMessages (1.0) <231842f6-a2d5-3283-be5f-8126b2af6e73> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/OneSignalInAppMessages.framework/OneSignalInAppMessages
       0x102254000 -        0x10227bfff com.onesignal.OneSignalLiveActivities (1.0) <a4e20173-a576-3422-968c-cdb25294e209> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/OneSignalLiveActivities.framework/OneSignalLiveActivities
       0x100c3c000 -        0x100c43fff com.onesignal.OneSignalLocation (1.0) <fa0c88b1-14bb-3096-aa2a-83885dff9888> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/OneSignalLocation.framework/OneSignalLocation
       0x101910000 -        0x10191ffff com.onesignal.OneSignalNotifications (1.0) <8b3e9860-3996-3e85-b7c2-4eaafb1731fc> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/OneSignalNotifications.framework/OneSignalNotifications
       0x10193c000 -        0x101953fff com.onesignal.OneSignalOSCore (1.0) <3ad4d911-af5c-3823-92fc-8c561e9927ab> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/OneSignalOSCore.framework/OneSignalOSCore
       0x104b04000 -        0x104b17fff com.onesignal.OneSignalOutcomes (1.0) <af24a17c-6ffa-332d-bbb2-a7d295125d57> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/OneSignalOutcomes.framework/OneSignalOutcomes
       0x106074000 -        0x1060c3fff com.onesignal.OneSignalUser (1.0) <03f0108d-916b-314b-8ac8-4f7292895603> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/OneSignalUser.framework/OneSignalUser
       0x10182c000 -        0x10183bfff com.apple.opengles (23.1.1) <3c12d848-bcc8-3b4c-a930-06aec2473400> /Volumes/VOLUME/*/OpenGLES.framework/OpenGLES
       0x100dd0000 -        0x100dd3fff com.apple.PassKit (1.0) <6f8f099a-45bd-313d-b6c6-0504e522507b> /Volumes/VOLUME/*/PassKit.framework/PassKit
       0x108f00000 -        0x1092bffff com.apple.Photos (1.0) <350ea1cb-6fcb-3628-9b21-59b351996fbe> /Volumes/VOLUME/*/Photos.framework/Photos
       0x1096d4000 -        0x1099fffff com.apple.QuartzCore (1195.14.4) <8be360df-f68a-37c7-99ee-ddaf3da9a99f> /Volumes/VOLUME/*/QuartzCore.framework/QuartzCore
       0x1012dc000 -        0x1012dffff org.cocoapods.RecaptchaInterop (101.0.0) <3f2351ce-8529-3703-940f-10e3fbfa3f66> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/RecaptchaInterop.framework/RecaptchaInterop
       0x1061ec000 -        0x10626bfff org.cocoapods.SDWebImage (5.21.7) <f769240c-fb3a-37c9-927b-98b7167f8266> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/SDWebImage.framework/SDWebImage
       0x109c14000 -        0x109e57fff com.apple.SafariServices (26.5) <07270e96-f86e-37c0-a0fd-06e43857630b> /Volumes/VOLUME/*/SafariServices.framework/SafariServices
       0x106af0000 -        0x106cbbfff com.apple.Security (10.0) <0af8a4fb-209e-31f7-ba57-f4084c1d23af> /Volumes/VOLUME/*/Security.framework/Security
       0x10a714000 -        0x10a9b3fff org.cocoapods.Sentry (8.58.2) <7bc16bbd-95f8-3a0a-a0c7-ba778644308f> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/Sentry.framework/Sentry
       0x1060e8000 -        0x10610ffff org.cocoapods.Stripe (24.7.0) <77c4ba35-563a-3d73-81d5-1f7ebd650f7b> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/Stripe.framework/Stripe
       0x1068f4000 -        0x106983fff org.cocoapods.StripeApplePay (24.7.0) <622927f7-97f0-3933-9dbd-31152647ce7f> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/StripeApplePay.framework/StripeApplePay
       0x10a364000 -        0x10a43ffff org.cocoapods.StripeCore (24.7.0) <387f4b3d-20e3-33e5-8c49-98f838c22a89> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/StripeCore.framework/StripeCore
       0x10d95c000 -        0x10dc67fff org.cocoapods.StripeFinancialConnections (24.7.0) <d061523f-5112-3976-8452-212ad34e3177> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/StripeFinancialConnections.framework/StripeFinancialConnections
       0x10ebf0000 -        0x10f02ffff org.cocoapods.StripePaymentSheet (24.7.0) <77ea9d32-2294-32cc-a0f0-bfba8e2ef747> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/StripePaymentSheet.framework/StripePaymentSheet
       0x10e160000 -        0x10e417fff org.cocoapods.StripePayments (24.7.0) <a5778573-7dff-344f-a0f9-88b1b9772d8c> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/StripePayments.framework/StripePayments
       0x10d174000 -        0x10d24bfff org.cocoapods.StripePaymentsUI (24.7.0) <21daacb0-71e9-3eef-b7df-d54a8cdb46ff> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/StripePaymentsUI.framework/StripePaymentsUI
       0x10d5cc000 -        0x10d6a7fff org.cocoapods.StripeUICore (24.7.0) <16c5650a-fc9a-3292-bff7-871a705b8445> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/StripeUICore.framework/StripeUICore
       0x105ffc000 -        0x106013fff org.cocoapods.SwiftyGif (5.4.5) <c9ad0092-74f4-38fa-a40e-40fc4e3ac36b> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/SwiftyGif.framework/SwiftyGif
       0x106e58000 -        0x106ed7fff com.apple.SystemConfiguration (1.21) <374cddd1-fae2-39a7-b824-6f019733eb4f> /Volumes/VOLUME/*/SystemConfiguration.framework/SystemConfiguration
       0x100f20000 -        0x100f23fff com.apple.UIKit (1.0) <4636a2d3-3f8d-3e96-94aa-023f16e1e9cc> /Volumes/VOLUME/*/UIKit.framework/UIKit
       0x111fb0000 -        0x113363fff com.apple.WebKit (8624) <d627190a-da4c-3a8e-a608-022203bb8ca9> /Volumes/VOLUME/*/WebKit.framework/WebKit
       0x10f694000 -        0x10f7fbfff org.cocoapods.absl (1.20240722.0) <7fd3e93b-248f-3e3c-9a80-f78dd023249e> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/absl.framework/absl
       0x104b5c000 -        0x104b63fff org.cocoapods.app-links (6.4.1) <f020943d-4e72-3420-bf3f-077183e6d88d> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/app_links.framework/app_links
       0x104b34000 -        0x104b43fff org.cocoapods.audio-session (0.0.1) <c35bb0c6-56e9-3cb1-9f84-eea9a48d199f> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/audio_session.framework/audio_session
       0x106154000 -        0x106163fff org.cocoapods.file-picker (0.0.1) <7941dd46-0233-376e-863a-b130591eece7> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/file_picker.framework/file_picker
       0x1012f0000 -        0x1012f3fff org.cocoapods.flutter-native-splash (2.4.3) <75dccf7f-f4cc-3af2-acb6-1e79f84e3255> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/flutter_native_splash.framework/flutter_native_splash
       0x106040000 -        0x10604ffff org.cocoapods.flutter-secure-storage (6.0.0) <2323d9c0-6920-3395-bf01-75edff0aa688> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/flutter_secure_storage.framework/flutter_secure_storage
       0x1022a0000 -        0x1022a7fff org.cocoapods.geocoding-ios (1.0.5) <37329431-7ee0-318c-93ee-ddbbc982d0ce> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/geocoding_ios.framework/geocoding_ios
       0x1061a4000 -        0x1061affff org.cocoapods.geolocator-apple (1.2.0) <59872d34-243d-36e5-aa5e-5e55aa9684ff> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/geolocator_apple.framework/geolocator_apple
       0x11731c000 -        0x117f77fff org.cocoapods.grpc (1.69.0) <a914ca39-5b37-3d12-a126-a76e732fd5d5> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/grpc.framework/grpc
       0x10fa20000 -        0x10fad7fff org.cocoapods.grpcpp (1.69.0) <c7249817-0314-3b61-9e40-95db689c22cf> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/grpcpp.framework/grpcpp
       0x106324000 -        0x106337fff org.cocoapods.image-picker-ios (0.0.1) <61716bac-20a4-300e-b4cf-5a2e103edb14> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/image_picker_ios.framework/image_picker_ios
       0x106358000 -        0x10636ffff org.cocoapods.just-audio (0.0.1) <85e74fb2-0ba8-37ae-86ea-6a6b836e458f> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/just_audio.framework/just_audio
       0x10a144000 -        0x10a1abfff org.cocoapods.leveldb (1.22.6) <3a3afbe9-027b-3ca2-a7b1-486c1590f856> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/leveldb.framework/leveldb
       0x1067d0000 -        0x1067e7fff org.cocoapods.local-auth-darwin (0.0.1) <ce9eea5e-e06d-3098-b63e-01ca6aa43a00> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/local_auth_darwin.framework/local_auth_darwin
       0x1061c8000 -        0x1061cffff org.cocoapods.nanopb (3.30910.0) <6f33cecc-a786-31d8-86c5-5eb672c9f2d6> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/nanopb.framework/nanopb
       0x10fcbc000 -        0x10fe87fff org.cocoapods.openssl-grpc (0.0.37) <92e4ebf5-c68b-3abb-9f98-c592a17349e0> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/openssl_grpc.framework/openssl_grpc
       0x101b24000 -        0x101b27fff org.cocoapods.package-info-plus (0.4.5) <25b41335-1b81-3dd2-824c-3e887c30f01d> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/package_info_plus.framework/package_info_plus
       0x10617c000 -        0x106187fff org.cocoapods.path-provider-foundation (0.0.1) <270457c8-567b-3149-8113-b4ccac6f271b> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/path_provider_foundation.framework/path_provider_foundation
       0x106788000 -        0x1067a7fff org.cocoapods.sentry-flutter (9.20.0) <7fb13fa2-2ba7-3f23-9994-d869c78e42d1> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/sentry_flutter.framework/sentry_flutter
       0x10638c000 -        0x106393fff org.cocoapods.share-plus (0.0.1) <88fdd43c-61ef-37e4-a17a-9f359cd2c79d> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/share_plus.framework/share_plus
       0x106860000 -        0x10687ffff org.cocoapods.sqflite-darwin (0.0.4) <ea7e101b-fa1a-3681-a0ab-38887e8f1049> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/sqflite_darwin.framework/sqflite_darwin
       0x10e800000 -        0x10e90bfff org.cocoapods.stripe-ios (0.0.1) <ccc01fa5-d7b4-34a6-834f-bb4753fcf841> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/stripe_ios.framework/stripe_ios
       0x1062ec000 -        0x1062fbfff org.cocoapods.url-launcher-ios (0.0.1) <1760dee7-5844-3f85-a264-c2e4e6a94adb> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/url_launcher_ios.framework/url_launcher_ios
       0x106f30000 -        0x106f5bfff org.cocoapods.video-player-avfoundation (0.0.1) <c05a85df-5c76-3ebd-a990-ab8e7a1055e9> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/video_player_avfoundation.framework/video_player_avfoundation
       0x106834000 -        0x10683bfff org.cocoapods.wakelock-plus (0.0.1) <ddc1eade-e4ad-3c4a-84bc-84024e01499a> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/wakelock_plus.framework/wakelock_plus
       0x10ea18000 -        0x10eac7fff org.cocoapods.webview-flutter-wkwebview (0.0.1) <3b21303b-822f-39ff-a74d-f22092f88e54> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/webview_flutter_wkwebview.framework/webview_flutter_wkwebview
       0x110338000 -        0x1104c3fff com.apple.LinkPresentation (296) <ad8af254-dbb2-318b-8195-4f6618361310> /Volumes/VOLUME/*/LinkPresentation.framework/LinkPresentation
       0x10a588000 -        0x10a5d3fff com.apple.UserNotifications (1.0) <9294c11a-1bb8-33cd-a3b1-b21da5a213c3> /Volumes/VOLUME/*/UserNotifications.framework/UserNotifications
       0x10783c000 -        0x10787bfff libobjc.A.dylib (*) <727c4040-5e6d-3dae-b22c-9a337d46c34f> /Volumes/VOLUME/*/libobjc.A.dylib
       0x11068c000 -        0x110813fff com.apple.AuthenticationServices (12.0) <72818307-8d18-39bd-9aa5-7e0e5f49e123> /Volumes/VOLUME/*/AuthenticationServices.framework/AuthenticationServices
       0x111398000 -        0x1117cbfff com.apple.CoreFoundation (6.9) <e74d7b62-0aac-3013-a55b-f15135d4bd2e> /Volumes/VOLUME/*/CoreFoundation.framework/CoreFoundation
       0x1148d8000 -        0x114d9bfff libswiftCore.dylib (*) <278dff77-40c0-3e59-8fe1-7c91fc72144a> /Volumes/VOLUME/*/libswiftCore.dylib
       0x106a64000 -        0x106a6bfff libswiftCoreAudio.dylib (*) <9c1d38e0-888c-394b-9671-f47b6163443f> /Volumes/VOLUME/*/libswiftCoreAudio.dylib
       0x106a90000 -        0x106a97fff libswiftCoreFoundation.dylib (*) <44f9ac34-451a-346e-b901-6219dc5e2fa3> /Volumes/VOLUME/*/libswiftCoreFoundation.dylib
       0x1021d8000 -        0x1021dbfff libswiftCoreImage.dylib (*) <ea95b96c-1532-31f1-a4b2-da18493d4c28> /Volumes/VOLUME/*/libswiftCoreImage.dylib
       0x10a2c0000 -        0x10a2dffff libswiftCoreLocation.dylib (*) <fee51bcd-3fe2-3305-9c13-af84f389bdcc> /Volumes/VOLUME/*/libswiftCoreLocation.dylib
       0x10ffe4000 -        0x11003bfff libswiftCoreMedia.dylib (*) <554c2d3c-5f1d-3899-a257-f0628aa03b04> /Volumes/VOLUME/*/libswiftCoreMedia.dylib
       0x1063a8000 -        0x1063abfff libswiftDarwin.dylib (*) <615dc6a5-1547-39e7-b8e7-e55597e5fd82> /Volumes/VOLUME/*/libswiftDarwin.dylib
       0x10a648000 -        0x10a65ffff libswiftDispatch.dylib (*) <6b31fdba-bd10-3cb3-a2c1-e12bc5553360> /Volumes/VOLUME/*/libswiftDispatch.dylib
       0x1068cc000 -        0x1068d3fff libswiftMetal.dylib (*) <7f7e43ff-9a80-38ed-8aa8-7200f227138b> /Volumes/VOLUME/*/libswiftMetal.dylib
       0x106814000 -        0x106817fff libswiftOSLog.dylib (*) <ccee512a-7781-3c2b-9428-fb82f1f375b2> /Volumes/VOLUME/*/libswiftOSLog.dylib
       0x106ac8000 -        0x106acbfff libswiftObjectiveC.dylib (*) <bedd74de-8419-3529-965f-f47985ca2e31> /Volumes/VOLUME/*/libswiftObjectiveC.dylib
       0x1068a8000 -        0x1068abfff libswiftQuartzCore.dylib (*) <91515f0e-2ca1-3116-b7d6-a3a5615a7039> /Volumes/VOLUME/*/libswiftQuartzCore.dylib
       0x10d808000 -        0x10d873fff libswiftSpatial.dylib (*) <41018f6a-79b1-34f5-bd0a-c8a05679d789> /Volumes/VOLUME/*/libswiftSpatial.dylib
       0x10a6b4000 -        0x10a6c3fff libswiftUniformTypeIdentifiers.dylib (*) <e52a9a30-bfdc-3da0-96d5-98646a0c42d2> /Volumes/VOLUME/*/libswiftUniformTypeIdentifiers.dylib
       0x10d440000 -        0x10d483fff libswiftXPC.dylib (*) <6ff16216-5fcc-3d53-92b1-3defe4ebb7de> /Volumes/VOLUME/*/libswiftXPC.dylib
       0x10acf0000 -        0x10ad0bfff libswiftos.dylib (*) <1d3376b8-9a80-3a59-9d0c-73be3d9b27f8> /Volumes/VOLUME/*/libswiftos.dylib
       0x10d390000 -        0x10d3a7fff libswiftsimd.dylib (*) <efe4acbb-6f18-3ef7-a194-a53882cacfac> /Volumes/VOLUME/*/libswiftsimd.dylib
       0x11c440000 -        0x11e2c7fff io.flutter.flutter (1.0) <4c4c4413-5555-3144-a191-dfec12239c3c> /Users/USER/Library/Developer/CoreSimulator/Devices/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836/data/Containers/Bundle/Application/20D60C17-6125-4FAF-8CD1-D38E629FA92B/Runner.app/Frameworks/Flutter.framework/Flutter
       0x100f2c000 -        0x100f2ffff libswiftFoundation.dylib (*) <72d488b4-5a93-3cf9-afcb-d7d68b85d612> /Volumes/VOLUME/*/libswiftFoundation.dylib
       0x121b48000 -        0x122ceffff com.apple.SwiftUI (7.5.3) <2332ef71-3e29-3e60-9849-acdd69b6b8ef> /Volumes/VOLUME/*/SwiftUI.framework/SwiftUI
       0x100ff8000 -        0x100ffbfff libswiftUIKit.dylib (*) <710be927-bac3-3b9e-b7ce-dbe0c5e8e2a5> /Volumes/VOLUME/*/libswiftUIKit.dylib
       0x10d3e4000 -        0x10d3fffff libc++abi.dylib (*) <ca04d801-3e4b-3a57-aead-0a5eb2db0671> /Volumes/VOLUME/*/libc++abi.dylib
       0x106fa4000 -        0x106fabfff libcache.dylib (*) <18cb5f7e-4707-3df5-8858-d413a8c30ead> /Volumes/VOLUME/*/libcache.dylib
       0x10a27c000 -        0x10a28bfff libcommonCrypto.dylib (*) <0ec99a76-d288-36e6-8c86-9320744497d3> /Volumes/VOLUME/*/libcommonCrypto.dylib
       0x106fb8000 -        0x106fbbfff libcompiler_rt.dylib (*) <5539b26b-6fa7-341f-9c21-25f04bc8138b> /Volumes/VOLUME/*/libcompiler_rt.dylib
       0x10a32c000 -        0x10a337fff libcopyfile.dylib (*) <6c335dd0-6ad0-3df6-a206-9f8e0adc2775> /Volumes/VOLUME/*/libcopyfile.dylib
       0x110994000 -        0x110a3ffff libcorecrypto.dylib (*) <730b0835-7d7b-35a3-b73e-7fc1d2c4403e> /Volumes/VOLUME/*/libcorecrypto.dylib
       0x110158000 -        0x11019ffff libdispatch.dylib (*) <42b50931-38d5-3a5d-90ef-0fd7239c408d> /Volumes/VOLUME/*/libdispatch.dylib
       0x10d558000 -        0x10d583fff libdyld.dylib (*) <2b7568e6-5eee-33e0-b471-2fdaae4ff448> /Volumes/VOLUME/*/libdyld.dylib
       0x10a254000 -        0x10a257fff libmacho.dylib (*) <fe0bf4dc-7db2-3fab-80f3-f07d856a6414> /Volumes/VOLUME/*/libmacho.dylib
       0x101854000 -        0x101857fff libremovefile.dylib (*) <75f9cee8-c230-37d7-b8a0-030d2cd40964> /Volumes/VOLUME/*/libremovefile.dylib
       0x10d520000 -        0x10d537fff libsystem_asl.dylib (*) <1e052c18-f23a-3780-8dbc-38155de2b31a> /Volumes/VOLUME/*/libsystem_asl.dylib
       0x10a6f4000 -        0x10a6f7fff libsystem_blocks.dylib (*) <a5fdf1ff-b793-3574-8903-d24571eacd25> /Volumes/VOLUME/*/libsystem_blocks.dylib
       0x110a88000 -        0x110b07fff libsystem_c.dylib (*) <05f4b01b-e685-39fa-93f3-de10cd9b511a> /Volumes/VOLUME/*/libsystem_c.dylib
       0x10a34c000 -        0x10a353fff libsystem_collections.dylib (*) <06537bb0-a40f-3f9d-b2cf-7ac91a08073d> /Volumes/VOLUME/*/libsystem_collections.dylib
       0x10a268000 -        0x10a26bfff libsystem_configuration.dylib (*) <ff160b5b-bed6-3deb-9262-8d782365ce7d> /Volumes/VOLUME/*/libsystem_configuration.dylib
       0x110250000 -        0x110283fff libsystem_containermanager.dylib (*) <13711693-a3b5-3d1c-a3ec-2b5748d8f402> /Volumes/VOLUME/*/libsystem_containermanager.dylib
       0x10a2a4000 -        0x10a2a7fff libsystem_coreservices.dylib (*) <69c961ba-ae03-3c41-8e83-5105c19d534e> /Volumes/VOLUME/*/libsystem_coreservices.dylib
       0x1101f4000 -        0x1101fffff libsystem_darwin.dylib (*) <c063c99f-5786-3246-a3d5-1fdb58b6e724> /Volumes/VOLUME/*/libsystem_darwin.dylib
       0x10d4f0000 -        0x10d4fbfff libsystem_dnssd.dylib (*) <182d0639-7968-31d5-a78f-d883b2c7ea1e> /Volumes/VOLUME/*/libsystem_dnssd.dylib
       0x10d940000 -        0x10d94bfff libsystem_eligibility.dylib (*) <31e55943-3ed0-3940-8c4a-3a33275073b1> /Volumes/VOLUME/*/libsystem_eligibility.dylib
       0x10ad4c000 -        0x10ad4ffff libsystem_featureflags.dylib (*) <fff724a7-f6d0-3400-bfac-d50395d8ac1c> /Volumes/VOLUME/*/libsystem_featureflags.dylib
       0x110b40000 -        0x110b67fff libsystem_info.dylib (*) <29821f88-c763-338e-a4cc-4fb7c6fb5d35> /Volumes/VOLUME/*/libsystem_info.dylib
       0x110b88000 -        0x110bc7fff libsystem_m.dylib (*) <f7674b20-d879-3915-999d-4798f27c2171> /Volumes/VOLUME/*/libsystem_m.dylib
       0x110bdc000 -        0x110c23fff libsystem_malloc.dylib (*) <f71aeb05-0d59-37ba-b0f2-457432bb09b5> /Volumes/VOLUME/*/libsystem_malloc.dylib
       0x1102ac000 -        0x1102c7fff libsystem_networkextension.dylib (*) <e891b1d0-57b3-3a83-ae97-d1d96b2da2ec> /Volumes/VOLUME/*/libsystem_networkextension.dylib
       0x1102e4000 -        0x1102f3fff libsystem_notify.dylib (*) <0a12237c-b994-34f8-aa5b-2421516467bf> /Volumes/VOLUME/*/libsystem_notify.dylib
       0x110234000 -        0x11023bfff libsystem_sandbox.dylib (*) <80656448-a78b-306e-8325-b5fb11634505> /Volumes/VOLUME/*/libsystem_sandbox.dylib
       0x110308000 -        0x11030ffff libsystem_sanitizers.dylib (*) <40b6bbaa-61ac-34c6-a2e1-fb3abc4f13d4> /Volumes/VOLUME/*/libsystem_sanitizers.dylib
       0x110c50000 -        0x110c53fff libsystem_sim_kernel.dylib (*) <488d759c-27ac-3544-9519-c1e4514ffb61> /Volumes/VOLUME/*/libsystem_sim_kernel.dylib
       0x110c68000 -        0x110c6bfff libsystem_sim_platform.dylib (*) <cd88b0bf-7a62-37b3-8604-97dd221779f4> /Volumes/VOLUME/*/libsystem_sim_platform.dylib
       0x10d42c000 -        0x10d42ffff libsystem_sim_pthread.dylib (*) <8299108f-5505-3232-a6db-9cdc00ccbee8> /Volumes/VOLUME/*/libsystem_sim_pthread.dylib
       0x110cc4000 -        0x110ce3fff libsystem_trace.dylib (*) <4138f7ef-2588-38b1-9977-1502a60e2e36> /Volumes/VOLUME/*/libsystem_trace.dylib
       0x104b80000 -        0x104b83fff libsystem_trial.dylib (*) <f08c1e0a-6ae0-3853-accc-16db5af83e32> /Volumes/VOLUME/*/libsystem_trial.dylib
       0x110c84000 -        0x110c8bfff libunwind.dylib (*) <c4187425-764f-3506-a411-5102b50ae804> /Volumes/VOLUME/*/libunwind.dylib
       0x110d94000 -        0x110ddbfff libxpc.dylib (*) <ff603b08-461e-35c4-82e6-3ad8e5d12848> /Volumes/VOLUME/*/libxpc.dylib
       0x106850000 -        0x106853fff libsystem_sim_platform_host.dylib (*) <0e3b310f-5f2f-3902-9055-ce9ddb9530e4> /Volumes/VOLUME/*/libsystem_sim_platform_host.dylib
       0x110e24000 -        0x110e2ffff libsystem_platform.dylib (*) <0831b8d2-190f-31fc-9eb6-ea8ba11fe47b> /usr/lib/system/libsystem_platform.dylib
       0x110d04000 -        0x110d3ffff libsystem_kernel.dylib (*) <856091df-df82-3985-9695-28eac306bcb5> /usr/lib/system/libsystem_kernel.dylib
       0x1068bc000 -        0x1068bffff libsystem_sim_kernel_host.dylib (*) <44bb20ac-1ee2-358d-b7c2-d0fe2ea626c3> /Volumes/VOLUME/*/libsystem_sim_kernel_host.dylib
       0x106fcc000 -        0x106fcffff libsystem_sim_pthread_host.dylib (*) <0f1e6a3a-cb26-3182-81c4-fe321f9aea69> /Volumes/VOLUME/*/libsystem_sim_pthread_host.dylib
       0x110ecc000 -        0x110edbfff libsystem_pthread.dylib (*) <1e522024-387b-3d18-81ca-f4559198954b> /usr/lib/system/libsystem_pthread.dylib
       0x110fac000 -        0x110feffff com.apple.CoreAutoLayout (1.0) <019c74a5-8186-357b-9d04-15223347cdb3> /Volumes/VOLUME/*/CoreAutoLayout.framework/CoreAutoLayout
       0x111130000 -        0x111203fff libcompression.dylib (*) <fb37cba8-ee5b-3937-91d0-6cb3112f7d7f> /Volumes/VOLUME/*/libcompression.dylib
       0x115794000 -        0x115b07fff com.apple.CFNetwork (1.0) <799e3578-e022-31f3-86af-938cea488909> /Volumes/VOLUME/*/CFNetwork.framework/CFNetwork
       0x111da0000 -        0x111e97fff libarchive.2.dylib (*) <fa5eb6ee-7e58-30c7-b0e0-248f778167b8> /Volumes/VOLUME/*/libarchive.2.dylib
       0x115da8000 -        0x11605bfff libicucore.A.dylib (*) <318b67c1-a854-3b53-a06d-dbdd2efbd54c> /Volumes/VOLUME/*/libicucore.A.dylib
       0x115180000 -        0x11525ffff libxml2.2.dylib (*) <457691c9-0574-3733-aba1-fc07680cee1c> /Volumes/VOLUME/*/libxml2.2.dylib
       0x10d50c000 -        0x10d50ffff liblangid.dylib (*) <87cf3ee4-1a8f-3eaa-8c46-d9911fc4777f> /Volumes/VOLUME/*/liblangid.dylib
       0x1152b0000 -        0x115353fff com.apple.framework.IOKit (2.0.2) <21ab2359-deec-3444-94fe-b7257e43be34> /Volumes/VOLUME/*/IOKit.framework/Versions/A/IOKit
       0x1161a0000 -        0x116257fff com.apple.combine (1.0) <adf01cb0-dcca-3309-8e17-6afa06f0fe13> /Volumes/VOLUME/*/Combine.framework/Combine
       0x1153c8000 -        0x1154d3fff com.apple.CollectionsInternal (1.2.0) <79983626-9e50-3559-8509-7c9d56c4f467> /Volumes/VOLUME/*/CollectionsInternal.framework/CollectionsInternal
       0x110e7c000 -        0x110e83fff com.apple.ReflectionInternal (1.0.0) <7041477f-2198-3e3e-bb81-4bdb6e6e5920> /Volumes/VOLUME/*/ReflectionInternal.framework/ReflectionInternal
       0x11121c000 -        0x11122ffff com.apple.RuntimeInternal (1.0.0) <9aabf4fa-0106-3224-8f53-e82b3cf9a177> /Volumes/VOLUME/*/RuntimeInternal.framework/RuntimeInternal
       0x110218000 -        0x11021bfff com.apple.SoftLinking (1.0) <3c7a8698-b4e2-3f0c-b540-329b1154d5b5> /Volumes/VOLUME/*/SoftLinking.framework/SoftLinking
       0x1110a4000 -        0x1110bbfff libswiftSystem.dylib (*) <52b9c2a8-04a8-3a4a-b3e1-0a85544465f4> /Volumes/VOLUME/*/libswiftSystem.dylib
       0x110324000 -        0x110327fff libswift_Builtin_float.dylib (*) <66b61ecc-1aae-3dbf-acfb-37baa867b8d5> /Volumes/VOLUME/*/libswift_Builtin_float.dylib
       0x11554c000 -        0x1155b3fff libswift_Concurrency.dylib (*) <c37acaad-0da6-3bd4-857e-b3ed6b6f16f3> /Volumes/VOLUME/*/libswift_Concurrency.dylib
       0x110d70000 -        0x110d73fff libswift_DarwinFoundation1.dylib (*) <e672c826-dbc9-3df8-9bd2-c275d434dc77> /Volumes/VOLUME/*/libswift_DarwinFoundation1.dylib
       0x1163c0000 -        0x116437fff libswift_StringProcessing.dylib (*) <044b2024-fcb9-3e07-a6bd-3eb5aba02b52> /Volumes/VOLUME/*/libswift_StringProcessing.dylib
       0x111304000 -        0x111333fff com.apple.CoreServicesInternal (505) <d9600ba2-caa8-363e-b89e-2fd636fb3847> /Volumes/VOLUME/*/CoreServicesInternal.framework/CoreServicesInternal
       0x116924000 -        0x116b5ffff com.apple.CoreServices (839) <27d2320d-91df-3974-a815-fbee4375327a> /Volumes/VOLUME/*/CoreServices.framework/CoreServices
       0x111044000 -        0x111063fff com.apple.GenerationalStorage (2.0) <fec28243-b13f-3ae7-a919-641e01abb1b1> /Volumes/VOLUME/*/GenerationalStorage.framework/GenerationalStorage
       0x115648000 -        0x11568ffff com.apple.CacheDelete (1.0) <02946ecf-08d1-34a3-a192-ddf01a3fe9ef> /Volumes/VOLUME/*/CacheDelete.framework/CacheDelete
       0x1164cc000 -        0x116517fff com.apple.QuickLookThumbnailing (1.0) <9ad6cb57-aed9-380f-9246-3390ec167c77> /Volumes/VOLUME/*/QuickLookThumbnailing.framework/QuickLookThumbnailing
       0x116d7c000 -        0x116f23fff com.apple.FileProvider (4018.120.24) <234c94f1-94fc-371e-86ad-f41b4bd77389> /Volumes/VOLUME/*/FileProvider.framework/FileProvider
       0x119d74000 -        0x119ed7fff com.apple.desktopservices (26.0) <0c1d318e-4d30-3e29-9dd9-6c6ca559ac63> /Volumes/VOLUME/*/DesktopServicesPriv.framework/DesktopServicesPriv
       0x1166b8000 -        0x116753fff com.apple.InstalledContentLibrary (1.0) <ebcc8849-11f0-3e03-827a-872f590a32db> /Volumes/VOLUME/*/InstalledContentLibrary.framework/InstalledContentLibrary
       0x11a020000 -        0x11a0fffff com.apple.BaseBoard (732.1.1) <ef3a155d-7fdc-30f0-ae49-334bfde137c4> /Volumes/VOLUME/*/BaseBoard.framework/BaseBoard
       0x110e50000 -        0x110e63fff libbsm.0.dylib (*) <eb366428-deeb-363b-b2bb-8af1f449d80c> /Volumes/VOLUME/*/libbsm.0.dylib
       0x1156d0000 -        0x115707fff com.apple.CSStore (1141.1) <afae4407-6522-3bb5-ae33-785b59ba6414> /Volumes/VOLUME/*/CoreServicesStore.framework/CoreServicesStore
       0x1167f0000 -        0x116837fff libMobileGestalt.dylib (*) <06ea7bbc-e1ab-355c-a64d-5bebf4b405e2> /Volumes/VOLUME/*/libMobileGestalt.dylib
       0x110c9c000 -        0x110c9ffff com.apple.MobileSystemServices (1.0) <ecafab0e-3e22-3aa6-ae28-abf59a903834> /Volumes/VOLUME/*/MobileSystemServices.framework/MobileSystemServices
       0x116580000 -        0x11659ffff com.apple.SecurityFoundation (1.0) <17272020-d603-30b2-a87b-52b7923282f3> /Volumes/VOLUME/*/SecurityFoundation.framework/SecurityFoundation
       0x11129c000 -        0x1112b7fff com.apple.ProtocolBuffer (1) <1f55aefd-a729-39e8-a1bc-649835effdd8> /Volumes/VOLUME/*/ProtocolBuffer.framework/ProtocolBuffer
       0x110f64000 -        0x110f6ffff libCoreEntitlements.dylib (*) <e7ed9f21-420a-3cc7-bfa3-e1ae0cabdbd2> /Volumes/VOLUME/*/libCoreEntitlements.dylib
       0x1171cc000 -        0x117227fff com.apple.MessageSecurity (1.0) <0322f83f-d7ce-3911-bd3b-b93fc4927322> /Volumes/VOLUME/*/MessageSecurity.framework/MessageSecurity
       0x11a46c000 -        0x11a59ffff com.apple.managedconfiguration (1.0) <7f897721-c6ab-3540-8439-7bdf5267f18a> /Volumes/VOLUME/*/ManagedConfiguration.framework/ManagedConfiguration
       0x1165f0000 -        0x116633fff com.apple.CloudServices (1.0) <0e58c800-0298-324d-90f3-b37720e8caf0> /Volumes/VOLUME/*/CloudServices.framework/CloudServices
       0x1170fc000 -        0x11712bfff com.apple.analyticsd (1.0) <b046feda-a519-3e34-ac58-7633b837433f> /Volumes/VOLUME/*/CoreAnalytics.framework/CoreAnalytics
       0x1061e0000 -        0x1061e3fff com.apple.MobileCoreServices (1226) <927dcc28-5b3b-3a39-af9a-bce3b0a54fe8> /Volumes/VOLUME/*/MobileCoreServices.framework/MobileCoreServices
       0x111f34000 -        0x111f4bfff libcoretls.dylib (*) <bc448f46-4618-3b38-8af3-e8c9971f65de> /Volumes/VOLUME/*/libcoretls.dylib
       0x110cac000 -        0x110caffff libcoretls_cfhelpers.dylib (*) <120cea67-6ae4-308e-956c-c1edbab06f0c> /Volumes/VOLUME/*/libcoretls_cfhelpers.dylib
       0x124c4c000 -        0x1261c3fff com.apple.Network (1.0) <29784682-6190-373a-a6f4-d6e5dbb30bd4> /Volumes/VOLUME/*/Network.framework/Network
       0x116668000 -        0x116687fff com.apple.BackgroundSystemTasks (1.0) <8e596b21-5d6d-35bc-92c9-c01e2cfe0ede> /Volumes/VOLUME/*/BackgroundSystemTasks.framework/BackgroundSystemTasks
       0x11a2ec000 -        0x11a373fff com.apple.LoggingSupport (1.0) <c0411e1d-ef35-39bf-823e-19819f70b0c3> /Volumes/VOLUME/*/LoggingSupport.framework/LoggingSupport
       0x11a8c8000 -        0x11a9a3fff com.apple.Rapport (7.1) <451659e9-eb0e-3d44-b9d1-dd1ec4b850a2> /Volumes/VOLUME/*/Rapport.framework/Rapport
       0x11a6f8000 -        0x11a757fff com.apple.RunningBoardServices (1.0) <02f5e55c-7232-3ad7-9bd0-329ca1ce87b3> /Volumes/VOLUME/*/RunningBoardServices.framework/RunningBoardServices
       0x11ac7c000 -        0x11adc7fff com.apple.SwiftData (1.0) <2449226e-2e13-3ad7-8ae3-5a808ecd2224> /Volumes/VOLUME/*/SwiftData.framework/SwiftData
       0x115744000 -        0x115757fff com.apple.UniformTypeIdentifiers (709) <efa43886-3f7c-308a-9cb9-18ae459003e4> /Volumes/VOLUME/*/UniformTypeIdentifiers.framework/UniformTypeIdentifiers
       0x1168e4000 -        0x116903fff com.apple.UserManagement (1.0) <8749dfa9-1773-3374-9ba4-393aa711f4a7> /Volumes/VOLUME/*/UserManagement.framework/UserManagement
       0x11ae68000 -        0x11af37fff libboringssl.dylib (*) <f594fbf9-eb6e-3d86-995e-bc88ea5ee368> /Volumes/VOLUME/*/libboringssl.dylib
       0x110f84000 -        0x110f8bfff libcupolicy.dylib (*) <a1114a57-45ad-3b92-b9ef-f70fdb67e08b> /Volumes/VOLUME/*/libcupolicy.dylib
       0x11a1e0000 -        0x11a223fff libnetworkextension.dylib (*) <a95474b4-7c61-3624-ba07-30444a336ac1> /Volumes/VOLUME/*/libnetworkextension.dylib
       0x11b4f0000 -        0x11b7a7fff com.apple.NetworkExtension (1.0) <cac1760f-43bc-3641-96d2-287d061fc57a> /Volumes/VOLUME/*/NetworkExtension.framework/NetworkExtension
       0x11b000000 -        0x11b0dbfff libquic.dylib (*) <b1ded2da-10cc-3669-b93b-42fb9b121b38> /Volumes/VOLUME/*/libquic.dylib
       0x11a7e8000 -        0x11a853fff libusrtcp.dylib (*) <f3d7cfb2-749b-3e5d-bb0d-30db6394a78d> /Volumes/VOLUME/*/libusrtcp.dylib
       0x111f04000 -        0x111f1bfff libapple_nghttp2.dylib (*) <6100d608-7225-3f28-acb0-08910d38015b> /Volumes/VOLUME/*/libapple_nghttp2.dylib
       0x11b130000 -        0x11b1c7fff com.apple.security.CryptoKit (1.0) <0a2d6cfa-1196-349a-bf84-fa4675d9eca6> /Volumes/VOLUME/*/CryptoKit.framework/CryptoKit
       0x1112dc000 -        0x1112ebfff com.apple.AtomicsInternal (1.1.0) <b1234974-3b34-3464-856d-fbdcc2daafc0> /Volumes/VOLUME/*/AtomicsInternal.framework/AtomicsInternal
       0x11b22c000 -        0x11b31bfff com.apple.InternalSwiftProtobuf (1.0) <4c8f8d3b-7911-3940-a7a2-ffd9c61b3083> /Volumes/VOLUME/*/InternalSwiftProtobuf.framework/InternalSwiftProtobuf
       0x117168000 -        0x117177fff libswiftDistributed.dylib (*) <d3c1c414-652c-3423-a60f-f78f3d9d56c8> /Volumes/VOLUME/*/libswiftDistributed.dylib
       0x1172a0000 -        0x1172affff libswiftObservation.dylib (*) <d8296875-a587-3665-b27f-6c2143b8f126> /Volumes/VOLUME/*/libswiftObservation.dylib
       0x1172d4000 -        0x1172e7fff libswiftSynchronization.dylib (*) <5bbe41de-a274-3e1f-9162-b21fedc5a2e7> /Volumes/VOLUME/*/libswiftSynchronization.dylib
       0x11ab68000 -        0x11abbffff com.apple.DuetActivityScheduler (1.0) <6cc0b760-4955-3f74-b826-1eed78e2c653> /Volumes/VOLUME/*/DuetActivityScheduler.framework/DuetActivityScheduler
       0x11b9e4000 -        0x11ba4ffff com.apple.private.NanoRegistry (1.0) <3768e028-105c-3305-97c2-8ab2033bb507> /Volumes/VOLUME/*/NanoRegistry.framework/NanoRegistry
       0x11a3f8000 -        0x11a423fff com.apple.AppConduit (1.0) <c636b6e2-8d77-374d-9d76-458f70fa276a> /Volumes/VOLUME/*/AppConduit.framework/AppConduit
       0x110ea8000 -        0x110eabfff com.apple.AggregateDictionary (1.0) <0ed507a0-73a4-3093-80fb-883e80d001f9> /Volumes/VOLUME/*/AggregateDictionary.framework/AggregateDictionary
       0x11b3c8000 -        0x11b417fff com.apple.coreduetcontext (1.0) <53d6d3ec-e3e7-3312-bcbe-15bdf349d193> /Volumes/VOLUME/*/CoreDuetContext.framework/CoreDuetContext
       0x11a258000 -        0x11a267fff com.apple.datamigration (1.0) <f12225ad-0121-3ae8-b94a-c97f9643390c> /Volumes/VOLUME/*/DataMigration.framework/DataMigration
       0x11fb78000 -        0x1203affff com.apple.BiomeLibrary (*) <4a749063-e112-3444-bd7a-22261c9be479> /Volumes/VOLUME/*/BiomeLibrary.framework/BiomeLibrary
       0x11befc000 -        0x11c0fbfff com.apple.CoreDuet (1.0) <ea79bfde-3ef1-3199-b2c4-283f476c40c4> /Volumes/VOLUME/*/CoreDuet.framework/CoreDuet
       0x120bb8000 -        0x1210d3fff com.apple.biome.BiomeStreams (1.0) <3cc01903-c85d-3e6f-9548-6643e4baf851> /Volumes/VOLUME/*/BiomeStreams.framework/BiomeStreams
       0x11bad8000 -        0x11bb27fff com.apple.biome.BiomeFoundation (1.0) <39ee6d18-6c1f-3862-a337-98f03a4545c5> /Volumes/VOLUME/*/BiomeFoundation.framework/BiomeFoundation
       0x11bc7c000 -        0x11bcd3fff com.apple.biome.BiomePubSub (1.0) <8d3bb3ad-999e-385c-8049-c473504c505d> /Volumes/VOLUME/*/BiomePubSub.framework/BiomePubSub
       0x11a288000 -        0x11a2a7fff liblzma.5.dylib (*) <3345e05b-95ba-3b4d-a854-5a008433dd58> /Volumes/VOLUME/*/liblzma.5.dylib
       0x11a2b8000 -        0x11a2cbfff com.apple.NanoPreferencesSync (1.0) <8396a331-3c69-3007-b913-0deb5315d5b8> /Volumes/VOLUME/*/NanoPreferencesSync.framework/NanoPreferencesSync
       0x11bb8c000 -        0x11bbcbfff com.apple.MobileInstallation (2.0) <34784e13-a132-3be7-81cd-35e98e3239d3> /Volumes/VOLUME/*/MobileInstallation.framework/MobileInstallation
       0x11b480000 -        0x11b4a7fff com.apple.PairedDeviceRegistry (1.0) <b7fc181e-3db9-3b1e-8007-33744d5fe107> /Volumes/VOLUME/*/PairedDeviceRegistry.framework/PairedDeviceRegistry
       0x11136c000 -        0x111373fff libswiftCompression.dylib (*) <436792f8-84e1-3128-8ee1-2f5489944487> /Volumes/VOLUME/*/libswiftCompression.dylib
       0x11bd6c000 -        0x11bddbfff com.apple.bom (14.0) <66688700-4efd-3f16-9634-f37aef57374b> /Volumes/VOLUME/*/Bom.framework/Bom
       0x11be10000 -        0x11be6bfff com.apple.IconFoundation (494) <d9e43c3d-0e1f-32b8-8765-d65e1515d215> /Volumes/VOLUME/*/IconFoundation.framework/IconFoundation
       0x111f64000 -        0x111f6ffff libbz2.1.0.dylib (*) <9ed5059a-b841-32f1-a400-8e9f271495bf> /Volumes/VOLUME/*/libbz2.1.0.dylib
       0x11c320000 -        0x11c387fff libParallelCompression.dylib (*) <0a4fb0f9-6e92-3f71-98f2-2f728fe254a3> /Volumes/VOLUME/*/libParallelCompression.dylib
       0x11eb38000 -        0x11ebcffff libAppleArchive.dylib (*) <0f428694-62d5-34f7-b68c-d69167bf2018> /Volumes/VOLUME/*/libAppleArchive.dylib
       0x111108000 -        0x11110ffff libiconv.2.dylib (*) <e79ffd8e-88ef-364a-a6ee-e3aa898f064b> /Volumes/VOLUME/*/libiconv.2.dylib
       0x11108c000 -        0x11108ffff libcharset.1.dylib (*) <6658215e-301a-3204-a60c-0f70f5d582df> /Volumes/VOLUME/*/libcharset.1.dylib
       0x11ec00000 -        0x11ec67fff com.apple.cocoa.IconRendering (1.0) <10460c2f-185d-38f9-b2be-55f584474a35> /Volumes/VOLUME/*/IconRendering.framework/IconRendering
       0x11eedc000 -        0x11ef5ffff com.apple.SFSymbolsFramework (1) <819c4526-167c-31a0-9d92-4ba2e1b6f6cf> /Volumes/VOLUME/*/SFSymbols.framework/SFSymbols
       0x11f36c000 -        0x11f497fff com.apple.CoreUI (1.0) <3e3d5876-25c1-301b-9951-0171503980fb> /Volumes/VOLUME/*/CoreUI.framework/CoreUI
       0x11aa9c000 -        0x11aaaffff com.apple.dt.DeveloperToolsSupport (23.40.26) <c39a6a22-0195-3f82-b00a-4e5266fe59a9> /Volumes/VOLUME/*/DeveloperToolsSupport.framework/DeveloperToolsSupport
       0x11aad0000 -        0x11aae3fff com.apple.IOSurface (393.5.7) <535ad6ac-99aa-3336-9381-4b6876dd3756> /Volumes/VOLUME/*/IOSurface.framework/IOSurface
       0x11f87c000 -        0x11f9e7fff com.apple.RenderBox (7.4.25) <208cb2c6-a896-3bc7-9742-ab21e55b5b4c> /Volumes/VOLUME/*/RenderBox.framework/RenderBox
       0x11f0f8000 -        0x11f1abfff libswiftAccelerate.dylib (*) <5903316e-f00d-3867-90f0-d5685fe6f19e> /Volumes/VOLUME/*/libswiftAccelerate.dylib
       0x11ecc0000 -        0x11ecf7fff com.apple.CoreSVG (1.0) <07af424f-05af-3d53-b64d-f4dbf15965bb> /Volumes/VOLUME/*/CoreSVG.framework/CoreSVG
       0x11edf8000 -        0x11ee8ffff com.apple.TextureIO (3.10.12) <552b33a5-1d90-3cc6-9440-3c439a08e5cb> /Volumes/VOLUME/*/TextureIO.framework/TextureIO
       0x11f5e0000 -        0x11f62bfff com.apple.CoreVideo (1.8) <0d0a426e-0f95-36f9-88cc-419a5a7027eb> /Volumes/VOLUME/*/CoreVideo.framework/CoreVideo
       0x1218c8000 -        0x121a4bfff com.apple.ColorSync (4.13.0) <c13a197d-40e1-3553-94a5-0ff3488ee530> /Volumes/VOLUME/*/ColorSync.framework/ColorSync
       0x111f80000 -        0x111f83fff com.apple.MetalPerformanceShaders.MetalPerformanceShaders (1.0) <61b163ae-1acb-3312-a40c-29ca734d2a04> /Volumes/VOLUME/*/MetalPerformanceShaders.framework/MetalPerformanceShaders
       0x11a878000 -        0x11a887fff com.apple.GraphVisualizer (1.0) <9864fca7-0668-3b53-944f-f3089bbe97a4> /Volumes/VOLUME/*/GraphVisualizer.framework/GraphVisualizer
       0x126cb0000 -        0x126df3fff com.apple.CoreMedia (1.0) <349285b5-cf08-3c24-95db-22141ac8dfef> /Volumes/VOLUME/*/CoreMedia.framework/CoreMedia
       0x1274c8000 -        0x12795ffff com.apple.VideoToolbox (1.0) <18cfa6e5-f151-326e-8ed4-b69c57d47a3e> /Volumes/VOLUME/*/VideoToolbox.framework/VideoToolbox
       0x11c3b0000 -        0x11c3f3fff com.apple.AppleJPEG (1.0) <87b4ff35-0f75-3b2d-bfb0-19a3d4789ccd> /Volumes/VOLUME/*/AppleJPEG.framework/AppleJPEG
       0x11ab0c000 -        0x11ab27fff libexpat.1.dylib (*) <87229499-3658-3dc7-acc0-c801ca584353> /Volumes/VOLUME/*/libexpat.1.dylib
       0x11f6a8000 -        0x11f72ffff libate.dylib (*) <b376feaf-79b3-36d6-a323-24d38fa42cd0> /Volumes/VOLUME/*/libate.dylib
       0x127a74000 -        0x127d0bfff libFontParser.dylib (*) <fc371824-605c-3fef-a834-2f93ba870139> /Volumes/VOLUME/*/FontServices.framework/libFontParser.dylib
       0x11ed30000 -        0x11ed4bfff libhvf.dylib (*) <2c742cf4-4a39-3f81-a906-785ace4dbe28> /Volumes/VOLUME/*/libhvf.dylib
       0x1216e8000 -        0x1217bffff com.apple.ParsingInternal (0.0.1) <a481b606-b9f5-3604-b53a-2d7845906c58> /Volumes/VOLUME/*/ParsingInternal.framework/ParsingInternal
       0x11bc10000 -        0x11bc33fff com.apple.applesauce (1.0) <5e39b5b7-e3e8-368a-967d-1f9805e1b4c0> /Volumes/VOLUME/*/AppleSauce.framework/AppleSauce
       0x127e74000 -        0x12821ffff com.apple.vImage (8.1) <b781652e-4892-34c1-9f0e-10dd4aaee111> /Volumes/VOLUME/*/Accelerate.framework/Frameworks/vImage.framework/vImage
       0x106828000 -        0x10682bfff com.apple.Accelerate.vecLib (3.11) <eec2cb2a-5e39-305f-8ab6-453744ff51b2> /Volumes/VOLUME/*/Accelerate.framework/Frameworks/vecLib.framework/vecLib
       0x11f748000 -        0x11f7a3fff libvMisc.dylib (*) <38326696-c379-3b0e-ae95-60542ba1c2cb> /Volumes/VOLUME/*/Accelerate.framework/Frameworks/vecLib.framework/libvMisc.dylib
       0x126f1c000 -        0x1270e3fff libBLAS.dylib (*) <1ac04688-4830-31df-b1e5-1251da9d184a> /Volumes/VOLUME/*/Accelerate.framework/Frameworks/vecLib.framework/libBLAS.dylib
       0x11a8a4000 -        0x11a8affff com.apple.FramePacing (1.0) <49bf682c-c61a-35c1-a158-99dab5c0bb54> /Volumes/VOLUME/*/FramePacing.framework/FramePacing
       0x111f94000 -        0x111f9bfff libCoreFSCache.dylib (*) <b2cce0a8-8ade-314e-9a0d-b1791c38d09f> /Volumes/VOLUME/*/OpenGLES.framework/libCoreFSCache.dylib
       0x11f30c000 -        0x11f34bfff libllvm-flatbuffers.dylib (*) <5e58cbb4-eb52-3588-9568-10853aec561c> /Volumes/VOLUME/*/libllvm-flatbuffers.dylib
       0x115778000 -        0x11577ffff libGPUCompilerUtils.dylib (*) <800fc657-e57b-3907-9d36-7eee87695a38> /Volumes/VOLUME/*/GPUCompiler.framework/Libraries/libGPUCompilerUtils.dylib
       0x11ab38000 -        0x11ab43fff libGFXShared.dylib (*) <ae7f86ce-a1c3-3689-b3ce-0c64947f3399> /Volumes/VOLUME/*/OpenGLES.framework/libGFXShared.dylib
       0x11f7b4000 -        0x11f7effff libGLImage.dylib (*) <09bddc43-7a19-3574-a60d-f70744c94a88> /Volumes/VOLUME/*/OpenGLES.framework/libGLImage.dylib
       0x1171a0000 -        0x1171a3fff libCVMSPluginSupport.dylib (*) <c0c75ea7-580a-3954-96c1-6bd07f6556f7> /Volumes/VOLUME/*/OpenGLES.framework/libCVMSPluginSupport.dylib
       0x126b38000 -        0x126c0ffff libvDSP.dylib (*) <79b82d12-8af9-3952-8cb6-553300a44e6d> /Volumes/VOLUME/*/Accelerate.framework/Frameworks/vecLib.framework/libvDSP.dylib
       0x129280000 -        0x12a17bfff libLAPACK.dylib (*) <a0307ce7-d8c4-3922-bd3e-5e93b30de384> /Volumes/VOLUME/*/Accelerate.framework/Frameworks/vecLib.framework/libLAPACK.dylib
       0x11c410000 -        0x11c423fff libLinearAlgebra.dylib (*) <c9a491df-6b52-3f80-908f-51bed4497489> /Volumes/VOLUME/*/Accelerate.framework/Frameworks/vecLib.framework/libLinearAlgebra.dylib
       0x11ed84000 -        0x11edabfff libSparseBLAS.dylib (*) <441afa55-ac6c-356e-b4e0-fb45fc06a5c4> /Volumes/VOLUME/*/Accelerate.framework/Frameworks/vecLib.framework/libSparseBLAS.dylib
       0x1171b4000 -        0x1171bbfff libQuadrature.dylib (*) <cd2c1865-4a2c-3cec-a18f-65f31b401d64> /Volumes/VOLUME/*/Accelerate.framework/Frameworks/vecLib.framework/libQuadrature.dylib
       0x12a274000 -        0x12aaeffff libBNNS.dylib (*) <e7c77a77-5e3d-30e9-8ef4-525a5d42ecad> /Volumes/VOLUME/*/Accelerate.framework/Frameworks/vecLib.framework/libBNNS.dylib
       0x1272a0000 -        0x127407fff libSparse.dylib (*) <31390263-73e7-304b-b2e7-e86f3889f9c7> /Volumes/VOLUME/*/Accelerate.framework/Frameworks/vecLib.framework/libSparse.dylib
       0x12ab94000 -        0x12b243fff com.apple.MIL (3520.4) <bb194719-272b-38df-a914-4c12ff180bab> /Volumes/VOLUME/*/MIL.framework/MIL
       0x12828c000 -        0x128307fff com.apple.Accounts (113) <7d16e7b4-ddb7-3fa8-b574-c18948b32b7d> /Volumes/VOLUME/*/Accounts.framework/Accounts
       0x121aa8000 -        0x121aebfff com.apple.AppSupport (1.0.0) <bfded03a-07d9-3892-b1ed-cb6133fb9763> /Volumes/VOLUME/*/AppSupport.framework/AppSupport
       0x126a44000 -        0x126a97fff com.apple.facetimeservices (10.0) <3c2844a5-9f94-3755-9091-12cfbc86ef67> /Volumes/VOLUME/*/FTServices.framework/FTServices
       0x11fb18000 -        0x11fb47fff com.apple.GSS (4.0) <ba996252-0c71-3efa-a7f4-dfa92f9e61da> /Volumes/VOLUME/*/GSS.framework/GSS
       0x12710c000 -        0x12717ffff com.apple.Heimdal (4.0) <a58e4a04-8042-30f5-9e13-95ebb379e650> /Volumes/VOLUME/*/Heimdal.framework/Heimdal
       0x12b788000 -        0x12ba93fff com.apple.InternationalSupport (1.0) <50e26b88-046e-34e3-b5a4-2ddaf08de56b> /Volumes/VOLUME/*/InternationalSupport.framework/InternationalSupport
       0x128394000 -        0x1283f3fff com.apple.NetworkServiceProxyFramework (1.0) <fddebaec-5d11-354e-9e64-a0a7f0cd501b> /Volumes/VOLUME/*/NetworkServiceProxy.framework/NetworkServiceProxy
       0x121800000 -        0x12181bfff com.apple.StreamingZip (1.0) <979a7c4d-48fe-3cdf-9cdf-a998830c97a2> /Volumes/VOLUME/*/StreamingZip.framework/StreamingZip
       0x11f834000 -        0x11f843fff com.apple.CorePhoneNumbers (1.0) <01b9c4ca-f2ab-37fb-81a6-3a01746aa95c> /Volumes/VOLUME/*/CorePhoneNumbers.framework/CorePhoneNumbers
       0x11a458000 -        0x11a45bfff libCTGreenTeaLogger.dylib (*) <1daff25b-fabf-3b86-ba98-f8e456e2da9c> /Volumes/VOLUME/*/libCTGreenTeaLogger.dylib
       0x1287a4000 -        0x128977fff com.apple.AppleAccount (1.0) <f7040629-e024-328b-8f20-2c59fec076f4> /Volumes/VOLUME/*/AppleAccount.framework/AppleAccount
       0x128ae0000 -        0x128b8bfff com.apple.SpringBoardServices (1.0) <8e7d0640-564d-35d4-b891-1715f577e40c> /Volumes/VOLUME/*/SpringBoardServices.framework/SpringBoardServices
       0x12846c000 -        0x1284c3fff com.apple.SetupAssistant (1.0) <49c3618f-c6a6-3762-8937-739dc2d31ab7> /Volumes/VOLUME/*/SetupAssistant.framework/SetupAssistant
       0x128f8c000 -        0x129177fff com.apple.ids (10.0) <1404340a-d5f0-3f5d-ac4d-da617a244821> /Volumes/VOLUME/*/IDS.framework/IDS
       0x126ad0000 -        0x126aeffff com.apple.AAAFoundation (1.0) <628a7e63-8d42-3fb7-82f0-f2849c68e581> /Volumes/VOLUME/*/AAAFoundation.framework/AAAFoundation
       0x126c2c000 -        0x126c57fff com.apple.aps.framework (4.0) <6a4bb4ed-c1e2-39f8-889a-447dcf87d969> /Volumes/VOLUME/*/ApplePushService.framework/ApplePushService
       0x12c9a4000 -        0x12cb9bfff com.apple.AuthKit (1.0) <38d24749-f2c7-3be6-9b2a-f0a9d93e3d7c> /Volumes/VOLUME/*/AuthKit.framework/AuthKit
       0x128534000 -        0x12858bfff com.apple.AAAFoundationSwift (1.0) <8b0fa611-9b35-32b3-9aef-a9aa6ffa8fde> /Volumes/VOLUME/*/AAAFoundationSwift.framework/AAAFoundationSwift
       0x12183c000 -        0x12184bfff com.apple.AppleIDSSOAuthentication (1.0) <6e22b159-4f4d-3de4-929c-e80bea8fa582> /Volumes/VOLUME/*/AppleIDSSOAuthentication.framework/AppleIDSSOAuthentication
       0x1285e0000 -        0x128623fff com.apple.devicemanagementclient.DMCEnrollmentLibrary (1.0) <18555ca2-348b-31d1-9eaa-7ed0f46352e4> /Volumes/VOLUME/*/DMCEnrollmentLibrary.framework/DMCEnrollmentLibrary
       0x128674000 -        0x1286c3fff com.apple.devicemanagementclient.DMCUtilities (1.0) <0c9dddd1-fe07-39a3-acf8-7ce71b9d91de> /Volumes/VOLUME/*/DMCUtilities.framework/DMCUtilities
       0x121868000 -        0x12187bfff com.apple.FeatureFlagsSupport (1.0) <5947419d-365c-3517-8dde-3c6c5a82fd08> /Volumes/VOLUME/*/FeatureFlagsSupport.framework/FeatureFlagsSupport
       0x12744c000 -        0x12747bfff com.apple.devicemanagementclient.MDMClientLibrary (1.0) <f6ef8d80-7bcf-3f7e-a052-5ea0e06f2782> /Volumes/VOLUME/*/MDMClientLibrary.framework/MDMClientLibrary
       0x12189c000 -        0x1218a7fff com.apple.devicemanagementclient.DEPClientLibrary (1.0) <7c49cc7b-0639-31c6-ad09-4384fd00eb57> /Volumes/VOLUME/*/DEPClientLibrary.framework/DEPClientLibrary
       0x12c610000 -        0x12c6dbfff com.apple.FrontBoardServices (1000.4.11) <e6e4db42-d8c1-3edf-a45a-c15655031659> /Volumes/VOLUME/*/FrontBoardServices.framework/FrontBoardServices
       0x12d054000 -        0x12d18bfff com.apple.ExtensionFoundation (97) <6f30865b-f3ca-32b7-b9be-3f6b848cdbc1> /Volumes/VOLUME/*/ExtensionFoundation.framework/ExtensionFoundation
       0x1271c8000 -        0x1271d7fff com.apple.xpc.AppServerSupport (1.0) <a49f3ab3-26b8-3830-9eb4-e7c2b1fd8c28> /Volumes/VOLUME/*/AppServerSupport.framework/AppServerSupport
       0x128d9c000 -        0x128e1ffff com.apple.BoardServices (1.0) <81f6efde-df0d-38db-966e-3eec0b02de41> /Volumes/VOLUME/*/BoardServices.framework/BoardServices
       0x128730000 -        0x128757fff com.apple.OSEligibility (*) <6ecacb84-4d97-354f-ad06-02983ea0e314> /Volumes/VOLUME/*/OSEligibility.framework/OSEligibility
       0x12cd38000 -        0x12cdcbfff com.apple.IconServices (494) <e87ab1e8-3ba0-3a75-b112-36407f8511a6> /Volumes/VOLUME/*/IconServices.framework/IconServices
       0x110ebc000 -        0x110ebffff com.apple.FeatureFlags (1.0) <7de1512e-94ce-3891-a98f-d7d7af0e7ef4> /Volumes/VOLUME/*/FeatureFlags.framework/FeatureFlags
       0x127238000 -        0x12724ffff com.apple.TCC (1.0) <7d813155-8c9c-3f02-b5aa-234349c93ff6> /Volumes/VOLUME/*/TCC.framework/TCC
       0x128d14000 -        0x128d4bfff com.apple.pluginkit.framework (1.0) <af9107a6-46f4-3971-95ba-32049b20263d> /Volumes/VOLUME/*/PlugInKit.framework/PlugInKit
       0x1271f4000 -        0x127203fff com.apple.AssertionServices (1.0) <0d4cd8d7-361b-37c2-8121-21d6ad88305f> /Volumes/VOLUME/*/AssertionServices.framework/AssertionServices
       0x110f9c000 -        0x110f9ffff libswift_DarwinFoundation2.dylib (*) <bfd2f2e4-789a-357a-b896-2a030964b767> /Volumes/VOLUME/*/libswift_DarwinFoundation2.dylib
       0x111120000 -        0x111123fff libswift_DarwinFoundation3.dylib (*) <3e409e5d-7b28-3cda-87ce-d9f8925611e9> /Volumes/VOLUME/*/libswift_DarwinFoundation3.dylib
       0x128cac000 -        0x128cb7fff com.apple.mobileicons.framework (1.0) <6fbac125-d8ee-36ce-8200-1833d1f6e844> /Volumes/VOLUME/*/MobileIcons.framework/MobileIcons
       0x12d968000 -        0x12dbf7fff com.apple.AssistantServices (1.0) <2c8b16bf-2fdf-320d-a653-aae3e9f4bccb> /Volumes/VOLUME/*/AssistantServices.framework/AssistantServices
       0x12ce88000 -        0x12cf5bfff com.apple.MobileAssets (1.0) <e463562c-cd65-3040-93fd-5e26d6f83d1e> /Volumes/VOLUME/*/MobileAsset.framework/MobileAsset
       0x12df58000 -        0x12dfcffff libGSFontCache.dylib (*) <babc8e8d-17bb-3971-bc2a-1a7ab6f3846b> /Volumes/VOLUME/*/FontServices.framework/libGSFontCache.dylib
       0x128cd4000 -        0x128cdffff libGSFont.dylib (*) <ced4fa95-d1e1-3f46-b85d-21528e5648bc> /Volumes/VOLUME/*/FontServices.framework/libGSFont.dylib
       0x12c7e0000 -        0x12c813fff libAccessibility.dylib (*) <1501b4f8-a995-3de7-829d-e4795768ed1f> /Volumes/VOLUME/*/libAccessibility.dylib
       0x12c87c000 -        0x12c8b7fff com.apple.OTSVG (1.0) <45d877da-fb6e-3ac0-8687-1e66fd1f9f7c> /Volumes/VOLUME/*/OTSVG.framework/OTSVG
       0x128ecc000 -        0x128ee3fff com.apple.FontServices (1.0) <171a9f66-d54a-3347-9943-7b3fc671c28f> /Volumes/VOLUME/*/FontServices.framework/FontServices
       0x12d458000 -        0x12d4b3fff com.apple.SoftwareUpdateCoreSupport (1.0) <b0232303-6b52-3cb6-8ce4-1edf0a723dda> /Volumes/VOLUME/*/SoftwareUpdateCoreSupport.framework/SoftwareUpdateCoreSupport
       0x128f0c000 -        0x128f1ffff com.apple.SoftwareUpdateCoreConnect (1.0) <d7ce0a6c-a0af-31de-96d7-bcb84dec59b5> /Volumes/VOLUME/*/SoftwareUpdateCoreConnect.framework/SoftwareUpdateCoreConnect
       0x128e8c000 -        0x128e97fff com.apple.ist.IdleTimerServices (1.0) <e24a42f8-548b-34c8-a7b8-a6dd0e670bb5> /Volumes/VOLUME/*/IdleTimerServices.framework/IdleTimerServices
       0x12d6d0000 -        0x12d77ffff com.apple.BackBoardServices (1.0) <9db8c374-0cc2-3b5a-966d-02dc9d4bb870> /Volumes/VOLUME/*/BackBoardServices.framework/BackBoardServices
       0x11f85c000 -        0x11f863fff com.apple.GraphicsServices (1.0) <95c64786-b053-33db-914f-5fa4b6cb8122> /Volumes/VOLUME/*/GraphicsServices.framework/GraphicsServices
       0x12c910000 -        0x12c923fff com.apple.MediaAccessibility (1.0) <15d918c8-2c16-39ab-bba0-20e2be9d46b0> /Volumes/VOLUME/*/MediaAccessibility.framework/MediaAccessibility
       0x11ac34000 -        0x11ac37fff com.apple.perf.apple.SignpostMetrics (1.0) <59b4a769-22a3-38fe-b82a-d97d9edff667> /Volumes/VOLUME/*/SignpostMetrics.framework/SignpostMetrics
       0x12e47c000 -        0x12e573fff com.apple.Symbolication (16.0) <ba9446ed-a753-3c21-b28d-341199121633> /Volumes/VOLUME/*/Symbolication.framework/Symbolication
       0x11edc4000 -        0x11edcbfff com.apple.CoreSimulator.SimFramebufferClient (1031) <47541bb2-5147-3a08-967f-3aff4cedf5b9> /Volumes/VOLUME/*/SimFramebufferClient.framework/SimFramebufferClient
       0x12c948000 -        0x12c957fff libperfcheck.dylib (*) <4abac712-63f4-3f83-bc6e-e9b286e2cf5c> /Volumes/VOLUME/*/libperfcheck.dylib
       0x12c970000 -        0x12c97ffff com.apple.perfdata (1.0) <c5b809d5-8904-3eaf-9760-57059964e730> /Volumes/VOLUME/*/perfdata.framework/perfdata
       0x12e8b8000 -        0x12e9effff com.apple.CoreSymbolication (16.0) <abe7bdfd-a70a-3625-8ac7-6d8634ba97af> /Volumes/VOLUME/*/CoreSymbolication.framework/CoreSymbolication
       0x12727c000 -        0x127287fff com.apple.MallocStackLogging (1.0) <3ef1e9de-b6bc-3c5d-ae18-3c1710c42c5d> /Volumes/VOLUME/*/MallocStackLogging.framework/MallocStackLogging
       0x12efa0000 -        0x12f067fff com.apple.SAObjects (1.0) <78325d36-42ad-319a-941a-86b97906717b> /Volumes/VOLUME/*/SAObjects.framework/SAObjects
       0x12f43c000 -        0x12f5bbfff com.apple.audio.toolbox.AudioToolbox (1.8) <85369dbc-8b45-3083-b507-0586c22077e0> /Volumes/VOLUME/*/AudioToolbox.framework/AudioToolbox
       0x12feec000 -        0x1302bffff com.apple.MediaRemote (1.0) <487130f4-7256-35a9-b6ae-3fbe68631db2> /Volumes/VOLUME/*/MediaRemote.framework/MediaRemote
       0x1325a8000 -        0x1333a7fff com.apple.siri.SiriInstrumentation (1.0) <ff3343b7-1c7f-3424-85a6-9583db7d37bc> /Volumes/VOLUME/*/SiriInstrumentation.framework/SiriInstrumentation
       0x12e66c000 -        0x12e753fff com.apple.siri.SiriAnalytics (1.0) <5b323cda-efe9-3a9a-b79d-87cae9356eac> /Volumes/VOLUME/*/SiriAnalytics.framework/SiriAnalytics
       0x12f6bc000 -        0x12f863fff com.apple.siri.SiriTTSService (1.0) <8b7c89b3-3504-33cf-b04d-cd07392e70ef> /Volumes/VOLUME/*/SiriTTSService.framework/SiriTTSService
       0x12d538000 -        0x12d57ffff com.apple.crossdevicearbitration (1.0) <9960338e-0fe0-3ef4-983a-0b14f99d82d6> /Volumes/VOLUME/*/SiriCrossDeviceArbitration.framework/SiriCrossDeviceArbitration
       0x12d3d8000 -        0x12d403fff com.apple.skp.FeedbackLogger (1.0) <73133fa7-835e-39b8-ad47-995419a2bd0b> /Volumes/VOLUME/*/FeedbackLogger.framework/FeedbackLogger
       0x12eb04000 -        0x12eb87fff com.apple.proactive.support.ProactiveSupport (1.0) <16f8d83f-20cf-3604-baf1-f3ab04e16589> /Volumes/VOLUME/*/ProactiveSupport.framework/ProactiveSupport
       0x11ac64000 -        0x11ac67fff com.apple.private.FaceTimeNameUtility (1.0) <d19cdf2e-e57b-3bc1-935d-c286be8ddbc3> /Volumes/VOLUME/*/FaceTimeNameUtility.framework/FaceTimeNameUtility
       0x12d868000 -        0x12d89ffff com.apple.voiceservices (1.0.0) <351d319e-302f-3c51-b014-20177ae94451> /Volumes/VOLUME/*/VoiceServices.framework/VoiceServices
       0x12e290000 -        0x12e2cbfff libswiftAVFoundation.dylib (*) <04f945f8-b385-3e21-86f0-d74f23451bf2> /Volumes/VOLUME/*/libswiftAVFoundation.dylib
       0x12d378000 -        0x12d383fff libswiftCoreMIDI.dylib (*) <40519410-d98a-36ae-adf6-6ebc340d29dc> /Volumes/VOLUME/*/libswiftCoreMIDI.dylib
       0x131458000 -        0x131a37fff com.apple.Intents (1.0) <577c0fa6-4e32-3744-83bf-5cd298b99361> /Volumes/VOLUME/*/Intents.framework/Intents
       0x12d628000 -        0x12d653fff com.apple.CoreLocation.LocationEssentials (1.0) <af0811fb-866c-31e4-990d-cc1d729b619b> /Volumes/VOLUME/*/_LocationEssentials.framework/_LocationEssentials
       0x12ec1c000 -        0x12ec53fff com.apple.UIKitServices (1.0) <02076aed-5b9a-384c-88e0-b967a6164421> /Volumes/VOLUME/*/UIKitServices.framework/UIKitServices
       0x12edfc000 -        0x12eeb3fff com.apple.UnifiedAssetFramework (1.0) <c50b0466-2322-3850-bdf0-b66199043046> /Volumes/VOLUME/*/UnifiedAssetFramework.framework/UnifiedAssetFramework
       0x130cec000 -        0x131057fff com.apple.audio.AudioToolboxCore (1.0) <9afb8126-9ebf-3560-816f-bac1c89e858d> /Volumes/VOLUME/*/AudioToolboxCore.framework/AudioToolboxCore
       0x12ecb4000 -        0x12ed07fff com.apple.audio.AudioSession (1.0) <885ec865-72bb-3e61-b4a2-ebe16d3fcfe6> /Volumes/VOLUME/*/AudioSession.framework/AudioSession
       0x12d5dc000 -        0x12d5e7fff com.apple.MediaExperience (1.0) <d1f3768a-15fd-3fba-be17-6128e4247175> /Volumes/VOLUME/*/MediaExperience.framework/MediaExperience
       0x12d674000 -        0x12d68bfff libAudioStatistics.dylib (*) <bf2d4280-8d39-3030-b724-52de3617cca3> /Volumes/VOLUME/*/libAudioStatistics.dylib
       0x12fb2c000 -        0x12fbe3fff com.apple.audio.midi.CoreMIDI (2.0) <1e3f7e76-d21f-3e03-8a22-3994c85249a2> /Volumes/VOLUME/*/CoreMIDI.framework/CoreMIDI
       0x12e3dc000 -        0x12e403fff com.apple.audio.caulk (1.0) <21528ae7-06a1-398d-a0a8-90236d3971b1> /Volumes/VOLUME/*/caulk.framework/caulk
       0x135158000 -        0x135593fff com.apple.audio.CoreAudio (5.0) <398a1360-d118-3052-883a-72dd43598702> /Volumes/VOLUME/*/CoreAudio.framework/CoreAudio
       0x12e358000 -        0x12e37bfff libAudioToolboxUtility.dylib (*) <83ec40db-c580-30a0-acfb-309e576526b5> /Volumes/VOLUME/*/libAudioToolboxUtility.dylib
       0x12fc78000 -        0x12fcc3fff com.apple.AVRouting (1.0) <dabb8959-05be-3be5-b9be-1b41239be0ea> /Volumes/VOLUME/*/AVRouting.framework/AVRouting
       0x12ed70000 -        0x12edb3fff libSessionUtility.dylib (*) <87a7c154-59cd-3b41-bb42-0b450ee4c240> /Volumes/VOLUME/*/AudioSession.framework/libSessionUtility.dylib
       0x12d8f4000 -        0x12d90bfff com.apple.imgaudio.AudioAnalytics (1.0) <8ff63717-afa4-3672-9f43-475de9f7c79e> /Volumes/VOLUME/*/AudioAnalytics.framework/AudioAnalytics
       0x12d928000 -        0x12d937fff com.apple.OSLog (1.0) <d4f45807-b860-3737-8b8e-8dfb47a73191> /Volumes/VOLUME/*/OSLog.framework/OSLog
       0x1364a8000 -        0x136ba7fff com.apple.MediaToolbox (1.0) <e31dc9b0-d282-31db-8289-a66feeb61540> /Volumes/VOLUME/*/MediaToolbox.framework/MediaToolbox
       0x13099c000 -        0x130af3fff com.apple.CoreUtils (8.3) <a2341516-3d22-3728-b795-6211e1f459c2> /Volumes/VOLUME/*/CoreUtils.framework/CoreUtils
       0x13499c000 -        0x134b1ffff com.apple.CMPhoto (1.0) <9a50b8ae-63a9-3cb3-8847-f33041373beb> /Volumes/VOLUME/*/CMPhoto.framework/CMPhoto
       0x12fd38000 -        0x12fd9bfff com.apple.osanalytics.OSAnalytics (1.0) <42f202c1-f36e-3ca9-887e-42f2bf400499> /Volumes/VOLUME/*/OSAnalytics.framework/OSAnalytics
       0x132190000 -        0x132357fff com.apple.cmphoto.AppleJPEGXL (1.0) <774b54a7-435f-3ffa-a907-cc63441cd009> /Volumes/VOLUME/*/AppleJPEGXL.framework/AppleJPEGXL
       0x128d7c000 -        0x128d83fff com.apple.CoreTime (334.0.16.3) <e36480ca-9325-37d2-8456-f7a1c7b465db> /Volumes/VOLUME/*/CoreTime.framework/CoreTime
       0x130720000 -        0x1307b3fff libswift_RegexParser.dylib (*) <7479d2c7-4931-3b1d-a395-0d7708b94785> /Volumes/VOLUME/*/libswift_RegexParser.dylib
       0x128f44000 -        0x128f4bfff com.apple.OSAServicesClient (1.0) <45f1a6fd-4e51-367a-8b78-074b0faa7505> /Volumes/VOLUME/*/OSAServicesClient.framework/OSAServicesClient
       0x11eddc000 -        0x11eddffff com.apple.iphonesimulator.SimulatorClient (1.0) <5cbfd142-f009-3409-807d-895662ea5df9> /Volumes/VOLUME/*/SimulatorClient.framework/SimulatorClient
       0x12ef44000 -        0x12ef6bfff com.apple.CoreUtilsExtras (1.0) <ad7a1515-c5d9-38c3-8957-ca2d4dfccc12> /Volumes/VOLUME/*/CoreUtilsExtras.framework/CoreUtilsExtras
       0x132380000 -        0x13240ffff com.apple.CMCapture (1.0) <8ed95120-2b22-3194-bd17-5596c9b48712> /Volumes/VOLUME/*/CMCapture.framework/CMCapture
       0x135914000 -        0x135a3ffff com.apple.ModelManagerServices (1.0) <bba0715d-4b9b-3789-af08-d79c805d8dc3> /Volumes/VOLUME/*/ModelManagerServices.framework/ModelManagerServices
       0x137040000 -        0x137263fff com.apple.TelephonyUtilities (1.0) <246742f3-f51c-3372-9ac7-de8498320670> /Volumes/VOLUME/*/TelephonyUtilities.framework/TelephonyUtilities
       0x1374e4000 -        0x13771ffff com.apple.AVFCore (1.0) <00410cd2-679e-3a81-89a7-f7478d535fae> /Volumes/VOLUME/*/AVFCore.framework/AVFCore
       0x135b84000 -        0x135cdbfff com.apple.audio.AVFAudio (1.0) <27c56d14-d420-3db3-baaf-79afae684d2a> /Volumes/VOLUME/*/AVFAudio.framework/AVFAudio
       0x137a58000 -        0x137bdffff com.apple.AVFCapture (1.0) <e708aaae-e643-3c5c-b9b2-3fc06c80c3a7> /Volumes/VOLUME/*/AVFCapture.framework/AVFCapture
       0x134ec0000 -        0x134fdbfff com.apple.Quagga (226) <c03631c0-9260-33bd-8fa3-33f3d5d0f929> /Volumes/VOLUME/*/Quagga.framework/Quagga
       0x11eec0000 -        0x11eec3fff com.apple.Celestial (1.0) <fa132d72-d13c-34cf-bbb9-9b8926458f86> /Volumes/VOLUME/*/Celestial.framework/Celestial
       0x12f9e0000 -        0x12f9f3fff com.apple.CameraOverlayServices (1.0) <a9679853-7718-3b7b-bf3e-1fc25aea9b0c> /Volumes/VOLUME/*/CameraOverlayServices.framework/CameraOverlayServices
       0x12fe08000 -        0x12fe1bfff com.apple.CMCaptureCore (1.0) <cad19938-745a-3c70-9ce3-f2c1375c445b> /Volumes/VOLUME/*/CMCaptureCore.framework/CMCaptureCore
       0x127220000 -        0x127223fff com.apple.CMCaptureDevice (*) <a2a818a5-60da-3876-9a7a-83f9692a1b7a> /Volumes/VOLUME/*/CMCaptureDevice.framework/CMCaptureDevice
       0x130874000 -        0x1308c3fff com.apple.CMImaging (1.0) <eff6e7e5-6de5-3d98-bbf8-0356c9116628> /Volumes/VOLUME/*/CMImaging.framework/CMImaging
       0x13909c000 -        0x139c4bfff com.apple.vision.EspressoFramework (1.0) <eef94be0-0be4-3f9a-8b03-fefdeaebf12e> /Volumes/VOLUME/*/Espresso.framework/Espresso
       0x12e828000 -        0x12e83ffff com.apple.mlcompiler.services (3404.3.1) <9e9199b9-c841-3eed-aa18-dcb298cfbb00> /Volumes/VOLUME/*/MLCompilerServices.framework/MLCompilerServices
       0x12fa80000 -        0x12fad3fff com.apple.mlcompiler.runtime (3404.3.1) <25e23738-d26f-3e72-b613-7298833a3e87> /Volumes/VOLUME/*/MLCompilerRuntime.framework/MLCompilerRuntime
       0x1360e0000 -        0x136157fff com.apple.proactive.AppleIntelligenceReporting (1.0) <ac99185b-36c3-3945-948f-6a2c6271f546> /Volumes/VOLUME/*/AppleIntelligenceReporting.framework/AppleIntelligenceReporting
       0x12878c000 -        0x12878ffff com.apple.security.CryptoKit-C-Bridging (1.0) <0cddb6f4-abd3-3524-9a2a-07427bbd0d5e> /Volumes/VOLUME/*/CryptoKitCBridging.framework/CryptoKitCBridging
       0x135028000 -        0x135083fff com.apple.CryptoTokenKit (1.0) <53a616d7-6332-335d-ae78-fb51e051739e> /Volumes/VOLUME/*/CryptoTokenKit.framework/CryptoTokenKit
       0x1312dc000 -        0x131323fff com.apple.LocalAuthentication (1.0) <4b8de740-3cfb-3ac1-a59c-fb621f0972ef> /Volumes/VOLUME/*/LocalAuthentication.framework/LocalAuthentication
       0x1382e8000 -        0x13847bfff com.apple.LocalAuthenticationCore (*) <3332f9f6-762d-3b72-903a-24ad1e1cce74> /Volumes/VOLUME/*/LocalAuthenticationCore.framework/LocalAuthenticationCore
       0x12fae8000 -        0x12fb03fff com.apple.LocalAuthenticationCredentialServices (*) <31e119f9-2fa5-3088-8e73-c18f68d93c69> /Volumes/VOLUME/*/LocalAuthenticationCredentialServices.framework/LocalAuthenticationCredentialServices
       0x12d3b0000 -        0x12d3bbfff com.apple.CoreAuthentication.SharedUtils (1.0) <57d05b99-c36e-349d-8d44-3fb4b70037d2> /Volumes/VOLUME/*/LocalAuthentication.framework/Support/SharedUtils.framework/SharedUtils
       0x13b090000 -        0x13b773fff com.apple.IntelligencePlatformLibrary (*) <3da2b342-224f-3003-ba76-82186e53c558> /Volumes/VOLUME/*/IntelligencePlatformLibrary.framework/IntelligencePlatformLibrary
       0x135f0c000 -        0x135f97fff com.apple.biome.CascadeSets (1.0) <c9c025f7-087a-3f6c-97ab-94e8ca827a3a> /Volumes/VOLUME/*/CascadeSets.framework/CascadeSets
       0x131388000 -        0x1313c7fff com.apple.biome.BiomeStorage (1.0) <059fa571-9a85-362b-a39a-58451f0489da> /Volumes/VOLUME/*/BiomeStorage.framework/BiomeStorage
       0x132500000 -        0x13256bfff com.apple.PoirotSchematizer (1.0) <c0cfd670-c99c-3d73-b42a-faa489688ca8> /Volumes/VOLUME/*/PoirotSchematizer.framework/PoirotSchematizer
       0x128f64000 -        0x128f6bfff com.apple.biome.BiomeSync (1.0) <f9c8a435-0884-34ec-9647-9564942eb6b6> /Volumes/VOLUME/*/BiomeSync.framework/BiomeSync
       0x12fe94000 -        0x12feabfff com.apple.biome.BiomeDSL (1.0) <0e8ed797-8e68-350a-94cd-cee93a076c65> /Volumes/VOLUME/*/BiomeDSL.framework/BiomeDSL
       0x130924000 -        0x130953fff com.apple.PoirotUDFs (1.0) <418b992f-31d6-33a2-b572-5a8fc34b1443> /Volumes/VOLUME/*/PoirotUDFs.framework/PoirotUDFs
       0x126c90000 -        0x126c93fff com.apple.InternationalTextSearch (1.0) <c065e26f-e0ef-3d48-a264-a26268b9c0a6> /Volumes/VOLUME/*/InternationalTextSearch.framework/InternationalTextSearch
       0x130c1c000 -        0x130c53fff com.apple.PoirotSQLite (1.0) <2a7c1469-7b7e-33d5-9f76-b2d476465c3e> /Volumes/VOLUME/*/PoirotSQLite.framework/PoirotSQLite
       0x130c7c000 -        0x130c93fff com.apple.BluetoothManager (1.0) <8983d98b-f1c0-335a-baee-dfdbf89b5405> /Volumes/VOLUME/*/BluetoothManager.framework/BluetoothManager
       0x137fc0000 -        0x1380affff com.apple.CoreBluetooth (*) <91e05a71-14c7-3fb6-91d1-ed0e2a6da450> /Volumes/VOLUME/*/CoreBluetooth.framework/CoreBluetooth
       0x138800000 -        0x1388e3fff com.apple.accessibility.AXCoreUtilities (1.0) <18eb05f7-8588-36db-8456-c1444c68a7e4> /Volumes/VOLUME/*/AXCoreUtilities.framework/AXCoreUtilities
       0x135e50000 -        0x135e87fff com.apple.MobileBluetooth (1.0) <d279fb5a-c532-3da3-8d2c-3a13a72b93bc> /Volumes/VOLUME/*/MobileBluetooth.framework/MobileBluetooth
       0x130cb8000 -        0x130cd7fff libedit.3.dylib (*) <5f67af5b-5dc8-3fd1-b27c-3b21e3842db3> /Volumes/VOLUME/*/libedit.3.dylib
       0x1363fc000 -        0x13643bfff com.apple.AttributeGraph (7.0.80) <77e0aed2-9e45-3d5f-a342-afd81934ffac> /Volumes/VOLUME/*/AttributeGraph.framework/AttributeGraph
       0x128cfc000 -        0x128cfffff libAXSafeCategoryBundle.dylib (*) <f4c83caa-2687-3ec3-ad40-78d723292961> /Volumes/VOLUME/*/libAXSafeCategoryBundle.dylib
       0x1389c8000 -        0x138ae3fff com.apple.DataFrame (1.0) <93e0e3a0-d036-3e7a-8a98-2f18fa94850f> /Volumes/VOLUME/*/TabularData.framework/TabularData
       0x137e84000 -        0x137ef7fff com.apple.ArgumentParserInternal (1.0) <2e4c293c-058e-30e1-ab14-37ef21b5c068> /Volumes/VOLUME/*/ArgumentParserInternal.framework/ArgumentParserInternal
       0x136038000 -        0x136073fff libncurses.5.4.dylib (*) <efd8aa86-7eec-31e3-8db1-6b9ee0a6fa18> /Volumes/VOLUME/*/libncurses.5.4.dylib
       0x138cb4000 -        0x138d6bfff com.apple.AddressBookLegacy (1.0) <c7055741-b438-3cdf-a40c-1f080676e121> /Volumes/VOLUME/*/AddressBookLegacy.framework/AddressBookLegacy
       0x13a36c000 -        0x13a407fff com.apple.CallKit (1.0) <2dbb0e31-be2a-3c37-be3d-408499f08bfd> /Volumes/VOLUME/*/CallKit.framework/CallKit
       0x135de0000 -        0x135e07fff com.apple.RTCReporting (13.1.47) <8dc4828c-5d5f-37ee-a595-ead4db7e2b5e> /Volumes/VOLUME/*/RTCReporting.framework/RTCReporting
       0x131410000 -        0x131427fff com.apple.commonutilities (8.0) <e6182c13-ff87-3601-a904-e838847b3e9e> /Volumes/VOLUME/*/CommonUtilities.framework/CommonUtilities
       0x12d6b0000 -        0x12d6b7fff com.apple.communicationsfilter (10.0) <a8285347-e7c5-35ae-b2eb-b4247b32e5d3> /Volumes/VOLUME/*/CommunicationsFilter.framework/CommunicationsFilter
       0x12e3ac000 -        0x12e3b7fff com.apple.imtransferservices (10.0) <1ec497ea-5d94-3df5-b7f1-7f40e85b6181> /Volumes/VOLUME/*/IMTransferServices.framework/IMTransferServices
       0x138b4c000 -        0x138bb3fff com.apple.imfoundation (10.0) <d5758c04-2fe7-3657-9ca2-a5efab46f82f> /Volumes/VOLUME/*/IMFoundation.framework/IMFoundation
       0x12d038000 -        0x12d03bfff com.apple.incomingcallfilter (10.0) <76a1d2ca-a3a5-35ff-9370-f69e682ec38e> /Volumes/VOLUME/*/IncomingCallFilter.framework/IncomingCallFilter
       0x128eb4000 -        0x128eb7fff com.apple.PhoneNumbers (1.0) <46a6a664-0a51-3b0c-86a9-6d23896ad043> /Volumes/VOLUME/*/PhoneNumbers.framework/PhoneNumbers
       0x13a4dc000 -        0x13a54bfff com.apple.calls.NeighborhoodActivityConduit (1.0) <f85ab66e-3750-33c3-b347-726f6e25d078> /Volumes/VOLUME/*/NeighborhoodActivityConduit.framework/NeighborhoodActivityConduit
       0x13aa70000 -        0x13ac5bfff com.apple.CallHistory (1.0) <2bb52cb3-4bdf-394a-a729-9158c3428952> /Volumes/VOLUME/*/CallHistory.framework/CallHistory
       0x137f38000 -        0x137f67fff com.apple.IdentityLookup (1.0) <e42e5c79-0a0c-35d3-af9d-7f9fa6a807bc> /Volumes/VOLUME/*/IdentityLookup.framework/IdentityLookup
       0x138e1c000 -        0x138ecffff com.apple.GenerativeFunctions.GenerativeModels (1.0) <225421bf-cfe4-3045-a1bb-46dee6b57273> /Volumes/VOLUME/*/GenerativeModels.framework/GenerativeModels
       0x13c6f0000 -        0x13cc9bfff com.apple.idsfoundation (10.0) <f7d3c48f-3fff-3ff4-80a6-4212817b4e7e> /Volumes/VOLUME/*/IDSFoundation.framework/IDSFoundation
       0x135104000 -        0x13510ffff libswiftIntents.dylib (*) <41e07a66-277c-3cac-a464-4f2916325a4e> /Volumes/VOLUME/*/libswiftIntents.dylib
       0x1381ac000 -        0x1381ebfff com.apple.dataaccess.dataaccessexpress.framework (1.0) <e61b0974-58a4-3446-932e-938d57b63692> /Volumes/VOLUME/*/DataAccessExpress.framework/DataAccessExpress
       0x13adc8000 -        0x13ae87fff com.apple.AddressBook.ContactsFoundation (8.0) <806d56ef-ec09-3186-aef7-8c0b53b814fb> /Volumes/VOLUME/*/ContactsFoundation.framework/ContactsFoundation
       0x13d010000 -        0x13d1d7fff com.apple.TextInput (1.0) <1a8e7732-8a47-3730-94ab-d819c235c17f> /Volumes/VOLUME/*/TextInput.framework/TextInput
       0x12e898000 -        0x12e89bfff com.apple.contacts.ContactsMetrics (1) <dad7d578-0a92-30c7-958f-15f6fdb0c260> /Volumes/VOLUME/*/ContactsMetrics.framework/ContactsMetrics
       0x138240000 -        0x13827ffff com.apple.iCalendar (7.0) <915a7e2c-5f40-3b5d-823a-123d3c588d38> /Volumes/VOLUME/*/iCalendar.framework/iCalendar
       0x12fa48000 -        0x12fa53fff com.apple.URLFormatting (296) <a597c01a-de0d-3b97-8e71-9116ee77cb45> /Volumes/VOLUME/*/URLFormatting.framework/URLFormatting
       0x138c14000 -        0x138c5bfff com.apple.datadetectorscore (8.0) <2967b188-a72e-3370-8d11-986a68ad2d19> /Volumes/VOLUME/*/DataDetectorsCore.framework/DataDetectorsCore
       0x13a894000 -        0x13a973fff com.apple.CloudSubscriptionFeatures (1.0) <70e7cc63-dfc6-3092-8e68-6ab8713ac4b7> /Volumes/VOLUME/*/CloudSubscriptionFeatures.framework/CloudSubscriptionFeatures
       0x140ac4000 -        0x1427affff com.apple.GeoServices (1.0) <c1901a61-d2f2-3b08-96f5-99b8aaf334b4> /Volumes/VOLUME/*/GeoServices.framework/GeoServices
       0x13c020000 -        0x13c1c7fff com.apple.Montreal (1.0) <fe35d018-a784-30b3-9e15-f09ae7c34f9c> /Volumes/VOLUME/*/Montreal.framework/Montreal
       0x13a734000 -        0x13a7a3fff com.apple.NaturalLanguage (1.0) <bebe0f0b-fd64-3f1e-ac50-85a3ccb5b668> /Volumes/VOLUME/*/NaturalLanguage.framework/NaturalLanguage
       0x135130000 -        0x135137fff com.apple.LinguisticData (1.0) <9b27a575-ef2f-3504-a300-869b04d3af64> /Volumes/VOLUME/*/LinguisticData.framework/LinguisticData
       0x13c210000 -        0x13c30bfff com.apple.CoreNLP (1.0) <65ed0744-eb47-35a0-b545-f49389fc5d16> /Volumes/VOLUME/*/CoreNLP.framework/CoreNLP
       0x138f44000 -        0x138fa3fff com.apple.GenerativeFunctions.GenerativeModelsFoundation (1.0) <a25fa120-6c8b-34a4-b91c-40102412c814> /Volumes/VOLUME/*/GenerativeModelsFoundation.framework/GenerativeModelsFoundation
       0x13afd8000 -        0x13b01ffff libTelephonyUtilDynamic.dylib (*) <aa7483bd-5a29-381c-bb51-98b03e7e688a> /Volumes/VOLUME/*/libTelephonyUtilDynamic.dylib
       0x13de7c000 -        0x13e03ffff com.apple.TokenGeneration (1.0) <1033c3fe-2792-3f4b-b036-9cacd5262c85> /Volumes/VOLUME/*/TokenGeneration.framework/TokenGeneration
       0x139000000 -        0x139037fff com.apple.GenerativeFunctions.GenerativeFunctions (1.0) <ac1be934-1197-3cb7-afcc-0fe9fe01d179> /Volumes/VOLUME/*/GenerativeFunctions.framework/GenerativeFunctions
       0x13befc000 -        0x13bf73fff com.apple.GenerativeFunctions.GenerativeFunctionsFoundation (1.0) <2c9e8594-0012-3c94-a8ff-b2972bb4fc93> /Volumes/VOLUME/*/GenerativeFunctionsFoundation.framework/GenerativeFunctionsFoundation
       0x13e5c8000 -        0x13e7e7fff com.apple.ModelCatalog.ModelCatalog (1.0) <bccaabbd-39c6-32fe-b4e2-1c5678748d3f> /Volumes/VOLUME/*/ModelCatalog.framework/ModelCatalog
       0x13d76c000 -        0x13d83bfff com.apple.SensitiveContentAnalysisML (*) <7b38ebf0-b6fb-31ff-bf26-1edb5fff686f> /Volumes/VOLUME/*/SensitiveContentAnalysisML.framework/SensitiveContentAnalysisML
       0x13be30000 -        0x13be7ffff com.apple.GenerativeFunctions.GenerativeFunctionsInstrumentation (1.0) <2e284053-e4e4-33bd-bfb9-ae1d32d2974a> /Volumes/VOLUME/*/GenerativeFunctionsInstrumentation.framework/GenerativeFunctionsInstrumentation
       0x13d918000 -        0x13da73fff com.apple.GenerativeFunctions.PromptKit (1.0) <9fa83a66-9e11-3f47-9b09-e8bc7bb91627> /Volumes/VOLUME/*/PromptKit.framework/PromptKit
       0x136094000 -        0x1360b7fff com.apple.intelligenceflow.ProactiveDaemonSupport (1.0) <887cf73b-52fc-317d-a46c-a5ce33c17bc4> /Volumes/VOLUME/*/ProactiveDaemonSupport.framework/ProactiveDaemonSupport
       0x13a824000 -        0x13a857fff com.apple.CoreEmoji (1.0) <3ee44161-e9bf-3d3c-86d1-b354e90af318> /Volumes/VOLUME/*/CoreEmoji.framework/CoreEmoji
       0x13c538000 -        0x13c63bfff com.apple.Lexicon-framework (1.0) <2850fd5a-2f76-32bf-a4f1-9c23d27f3692> /Volumes/VOLUME/*/Lexicon.framework/Lexicon
       0x13eda0000 -        0x13ef2ffff com.apple.TokenGenerationCore (1.0) <f676b3f7-3008-3c53-b1d2-50f99c5b071f> /Volumes/VOLUME/*/TokenGenerationCore.framework/TokenGenerationCore
       0x135ee8000 -        0x135eeffff libswiftNaturalLanguage.dylib (*) <84abc171-311d-3d8b-bdc5-9c6a95d71e13> /Volumes/VOLUME/*/libswiftNaturalLanguage.dylib
       0x137e04000 -        0x137e0ffff libswiftRegexBuilder.dylib (*) <6958fffa-fd0f-3c7c-b4f2-0b20b1a38fb4> /Volumes/VOLUME/*/libswiftRegexBuilder.dylib
       0x13dcf0000 -        0x13dd8bfff com.apple.trial (1.0) <ad8566e0-3a96-32fa-ad8f-e353c1241860> /Volumes/VOLUME/*/Trial.framework/Trial
       0x13dba0000 -        0x13dc17fff com.apple.TrialProto (1.0) <8c2f337b-4634-3e84-ae43-f8120fbdea7e> /Volumes/VOLUME/*/TrialProto.framework/TrialProto
       0x13e988000 -        0x13e9ebfff com.apple.aiml.dendrite.Dendrite (1.0) <e8f5eeb9-7d66-3b7a-88d0-cc2f1c714587> /Volumes/VOLUME/*/Dendrite.framework/Dendrite
       0x13905c000 -        0x139077fff com.apple.siri.flatbuffer.AppleFlatBuffers (*) <e8ee7b94-ca88-31bf-b1fd-7f0edda1b234> /Volumes/VOLUME/*/AppleFlatBuffers.framework/AppleFlatBuffers
       0x13c48c000 -        0x13c4dffff com.apple.SentencePieceInternal (*) <98ef2c45-daf8-3950-9228-465602f77dfc> /Volumes/VOLUME/*/SentencePieceInternal.framework/SentencePieceInternal
       0x13fd14000 -        0x1402fffff com.apple.VN (9.5.4) <aac3fc1e-04c4-3825-af80-dba9983f185f> /Volumes/VOLUME/*/Vision.framework/Vision
       0x13f1cc000 -        0x13f35ffff com.apple.LanguageModeling (1.0) <a946b122-bd59-3bce-957f-3239b1349115> /Volumes/VOLUME/*/LanguageModeling.framework/LanguageModeling
       0x13ea30000 -        0x13ea87fff libmecab.dylib (*) <42c1bfd2-656c-3ae7-89ac-2035d6dcc1d9> /Volumes/VOLUME/*/libmecab.dylib
       0x13c3f0000 -        0x13c41ffff libCRFSuite.dylib (*) <fe8035c1-8537-39ae-a899-1e34ecba2dcb> /Volumes/VOLUME/*/libCRFSuite.dylib
       0x12d614000 -        0x12d617fff libgermantok.dylib (*) <cc32edb3-1241-334a-891a-804c29657134> /Volumes/VOLUME/*/libgermantok.dylib
       0x135ec4000 -        0x135ecbfff libThaiTokenizer.dylib (*) <2c7d68db-4002-327e-b843-4fea9794735e> /Volumes/VOLUME/*/libThaiTokenizer.dylib
       0x143e20000 -        0x144333fff com.apple.CoreML (1.0) <37c003e7-8611-3046-b0fb-f7151c1a0773> /Volumes/VOLUME/*/CoreML.framework/CoreML
       0x13ebd0000 -        0x13ec47fff com.apple.CoreML.MLAssetIO (1.0) <beec3632-d8f8-34b1-8477-4ac458e64a1d> /Volumes/VOLUME/*/MLAssetIO.framework/MLAssetIO
       0x147114000 -        0x148323fff com.apple.MetalPerformanceShadersGraph (6.5.1) <bbf82850-92c5-3d63-aa4d-73da1a27b855> /Volumes/VOLUME/*/MetalPerformanceShadersGraph.framework/MetalPerformanceShadersGraph
       0x13f67c000 -        0x13f8cbfff com.apple.mlpt.ODIE (1.0) <a6e310c6-97fb-3b7b-8c31-dee56e766737> /Volumes/VOLUME/*/ODIE.framework/ODIE
       0x13f3c4000 -        0x13f46ffff com.apple.MetalPerformanceShaders.MPSCore (1.0) <46ba087b-e078-3744-ae66-03560f6973fe> /Volumes/VOLUME/*/MetalPerformanceShaders.framework/Frameworks/MPSCore.framework/MPSCore
       0x13fb18000 -        0x13fbabfff com.apple.MetalPerformanceShaders.MPSImage (1.0) <6ae0c534-f970-34a3-a6ca-fb412ab9d142> /Volumes/VOLUME/*/MetalPerformanceShaders.framework/Frameworks/MPSImage.framework/MPSImage
       0x144a7c000 -        0x144cb7fff com.apple.MetalPerformanceShaders.MPSNeuralNetwork (1.0) <283900f7-99ae-3dfd-a540-5537bb82d41d> /Volumes/VOLUME/*/MetalPerformanceShaders.framework/Frameworks/MPSNeuralNetwork.framework/MPSNeuralNetwork
       0x13c680000 -        0x13c6abfff com.apple.MetalPerformanceShaders.MPSMatrix (1.0) <27ff3da2-d520-3470-a818-8b936b121882> /Volumes/VOLUME/*/MetalPerformanceShaders.framework/Frameworks/MPSMatrix.framework/MPSMatrix
       0x13eb34000 -        0x13eb83fff com.apple.MetalPerformanceShaders.MPSRayIntersector (1.0) <83305200-06d8-391c-805c-17008293764d> /Volumes/VOLUME/*/MetalPerformanceShaders.framework/Frameworks/MPSRayIntersector.framework/MPSRayIntersector
       0x144dd8000 -        0x144fa3fff com.apple.MetalPerformanceShaders.MPSNDArray (1.0) <5ea0bbee-6a36-3982-af5c-893bbf4c26f8> /Volumes/VOLUME/*/MetalPerformanceShaders.framework/Frameworks/MPSNDArray.framework/MPSNDArray
       0x137dd4000 -        0x137de7fff com.apple.MPSFunctions (1.0) <ccb19391-0f1d-3ba2-a3da-b41925ee6b43> /Volumes/VOLUME/*/MetalPerformanceShaders.framework/Frameworks/MPSFunctions.framework/MPSFunctions
       0x13aa00000 -        0x13aa1bfff com.apple.MPSBenchmarkLoop (1.0) <38c0580c-5450-3ea2-8309-d9d5319b0d22> /Volumes/VOLUME/*/MetalPerformanceShaders.framework/Frameworks/MPSBenchmarkLoop.framework/MPSBenchmarkLoop
       0x13647c000 -        0x136483fff com.apple.MPSHost (1.0) <74563c33-e018-322e-a82d-1a0954fb069f> /Volumes/VOLUME/*/MetalPerformanceShaders.framework/Frameworks/MPSHost.framework/MPSHost
       0x1450bc000 -        0x145203fff com.apple.gpusw.MetalTools (1.0) <4391cffb-82d4-3fe4-a386-e372116c02ed> /Volumes/VOLUME/*/MetalTools.framework/MetalTools
       0x13aa38000 -        0x13aa4ffff com.apple.ggml.ModelAsset (1.0) <97d6ffc5-e030-3bf4-a3cd-b55d71d1bdd3> /Volumes/VOLUME/*/MLModelAsset.framework/MLModelAsset
       0x137e5c000 -        0x137e6ffff libcmph.dylib (*) <cfa4ace6-856b-35df-b3bc-e6b0223e116a> /Volumes/VOLUME/*/libcmph.dylib
       0x13f938000 -        0x13fa2bfff com.apple.CoreSceneUnderstanding (1.74.0) <986b4d34-03f5-3506-a63c-2a489279fe62> /Volumes/VOLUME/*/CoreSceneUnderstanding.framework/CoreSceneUnderstanding
       0x13f4c0000 -        0x13f4fbfff com.apple.VisionCore (9.5.4) <c51e0180-7e64-321c-ae97-280a5805e09e> /Volumes/VOLUME/*/VisionCore.framework/VisionCore
       0x145cac000 -        0x1462bbfff libfaceCore.dylib (*) <d203d005-4c8e-34e9-ad73-1e54cbefc5ad> /Volumes/VOLUME/*/Vision.framework/libfaceCore.dylib
       0x13bfe4000 -        0x13bffbfff com.apple.Futhark (1.0) <48772939-aa43-33fc-8082-916ca7bc0f1c> /Volumes/VOLUME/*/Futhark.framework/Futhark
       0x13f554000 -        0x13f5c7fff com.apple.acg.InertiaCam (1.0) <ee3db25c-f4ee-37f7-8022-0ece493203bb> /Volumes/VOLUME/*/InertiaCam.framework/InertiaCam
       0x145840000 -        0x145a7ffff com.apple.TextRecognition (1.0) <8d531aa8-24df-337c-8e09-c6453cbe6810> /Volumes/VOLUME/*/TextRecognition.framework/TextRecognition
       0x13beb8000 -        0x13bec3fff com.apple.DataDetection (8.0) <db0b435c-be4d-3d31-8bcf-cccd792a2264> /Volumes/VOLUME/*/DataDetection.framework/DataDetection
       0x144720000 -        0x14480bfff com.apple.CVNLP (1.0) <3f7c8c8e-05ae-3c42-b3bd-74504431c42c> /Volumes/VOLUME/*/CVNLP.framework/CVNLP
       0x137e34000 -        0x137e3bfff com.apple.GeoServices (1.0) <6ec25614-313c-338c-aad1-aec830781487> /Volumes/VOLUME/*/GeoServicesCore.framework/GeoServicesCore
       0x13c468000 -        0x13c473fff com.apple.PushKit (1.0) <199f70da-6159-37db-b9c4-d2f5eddb6277> /Volumes/VOLUME/*/PushKit.framework/PushKit
       0x13eabc000 -        0x13ead3fff com.apple.Engram (1.0) <418455b3-ef6d-3f95-8979-fb528fdb38f9> /Volumes/VOLUME/*/Engram.framework/Engram
       0x1409ac000 -        0x140a2bfff com.apple.AsyncAlgorithmsInternal (1.0.0) <498324d9-956a-363c-9954-bc6fad60d092> /Volumes/VOLUME/*/AsyncAlgorithmsInternal.framework/AsyncAlgorithmsInternal
       0x11ab58000 -        0x11ab5bfff com.apple.marco (10.0) <aee53122-ab9d-3359-8b26-3c7d68108074> /Volumes/VOLUME/*/Marco.framework/Marco
       0x1453f4000 -        0x145457fff com.apple.internal.XPCDistributed (1.0) <391e2051-fbdb-3b4c-b6b1-0bfeb5992063> /Volumes/VOLUME/*/XPCDistributed.framework/XPCDistributed
       0x12d954000 -        0x12d957fff com.apple.ftawd (8.0) <a2b69e49-6093-3966-94ea-fefef1d12a5d> /Volumes/VOLUME/*/FTAWD.framework/FTAWD
       0x13de40000 -        0x13de4ffff com.apple.AppleIDAuthSupport (1.0) <d9238093-5c89-30e8-8b0f-5dc96e05a359> /Volumes/VOLUME/*/AppleIDAuthSupport.framework/AppleIDAuthSupport
       0x149b08000 -        0x149ea7fff com.apple.cloudkit.CloudKit (2360.120.2) <74c2b678-2477-3b45-bb6a-4a8db3903d54> /Volumes/VOLUME/*/CloudKit.framework/CloudKit
       0x12e468000 -        0x12e46bfff com.apple.CoreDuetDaemonProtocol (1.0) <0840920c-795f-3c1e-9f96-104214177171> /Volumes/VOLUME/*/CoreDuetDaemonProtocol.framework/CoreDuetDaemonProtocol
       0x144918000 -        0x14496ffff com.apple.cloudkit.C2 (1.3) <811d4d42-e988-3f1e-9ef7-033ed03b23aa> /Volumes/VOLUME/*/C2.framework/C2
       0x14555c000 -        0x1455bbfff com.apple.cloudkit.CloudCoreInternal (*) <cadcd3ae-f2a8-3c05-9940-7fb3f1be0a43> /Volumes/VOLUME/*/CloudCoreInternal.framework/CloudCoreInternal
       0x146568000 -        0x1465f3fff com.apple.ProtectedCloudStorage (1.0) <6db11e7c-7e4e-3e53-bbf4-37e6ed5871cf> /Volumes/VOLUME/*/ProtectedCloudStorage.framework/ProtectedCloudStorage
       0x1408ec000 -        0x140943fff com.apple.cloudkit.CloudAsset (*) <36b4977d-c2fa-33c0-ae9f-08adb8c6f343> /Volumes/VOLUME/*/CloudAsset.framework/CloudAsset
       0x144850000 -        0x14488bfff com.apple.CoreTransferable (1.0.1) <a285e09d-ef16-3385-a9ac-a84aba57d756> /Volumes/VOLUME/*/CoreTransferable.framework/CoreTransferable
       0x13ed40000 -        0x13ed73fff com.apple.locationsupport (3075.0.8) <f5e1d9e0-3184-36f7-ae61-98b8d7693968> /Volumes/VOLUME/*/LocationSupport.framework/LocationSupport
       0x137fa0000 -        0x137fa7fff com.apple.CoreLocation.LocationLogEncryption (*) <e137f637-d9b4-3cdf-acfc-b014381150e2> /Volumes/VOLUME/*/LocationLogEncryption.framework/LocationLogEncryption
       0x13bee0000 -        0x13bee7fff libheimdal-asn1.dylib (*) <6d9fd7ed-207b-3ecb-ac7a-5d79e9a4e8d9> /Volumes/VOLUME/*/libheimdal-asn1.dylib
       0x13fa80000 -        0x13faaffff com.apple.security.octagontrust (1.0) <d1ca7480-ca98-3999-b851-dcf5d11441ec> /Volumes/VOLUME/*/OctagonTrust.framework/OctagonTrust
       0x145634000 -        0x145673fff com.apple.security.KeychainCircle.KeychainCircle (1.0) <1dae75a7-3b17-3039-9224-9a7bb9e020ca> /Volumes/VOLUME/*/KeychainCircle.framework/KeychainCircle
       0x146964000 -        0x146ac3fff com.apple.UIFoundation (1.0) <3ce0749b-0647-34a0-991b-52feca254f62> /Volumes/VOLUME/*/UIFoundation.framework/UIFoundation
       0x13ece4000 -        0x13ecf3fff com.apple.IntentsFoundation (1.0) <2c0dda38-2bb0-3b32-9931-48fce60eb6f8> /Volumes/VOLUME/*/IntentsFoundation.framework/IntentsFoundation
       0x146694000 -        0x14674ffff com.apple.AppProtection (1.0) <de592ae7-e5b9-362f-953a-18375c17bf93> /Volumes/VOLUME/*/AppProtection.framework/AppProtection
       0x146de8000 -        0x146eabfff com.apple.CoreSuggestions (1.0) <2150a988-acf1-33ed-86c2-342cf4e7c0b1> /Volumes/VOLUME/*/CoreSuggestions.framework/CoreSuggestions
       0x14a40c000 -        0x14a54bfff com.apple.CoreSpotlight (1.0) <bb07aad8-408c-3cac-9633-8b4db90a43c8> /Volumes/VOLUME/*/CoreSpotlight.framework/CoreSpotlight
       0x1449e0000 -        0x144a17fff com.apple.proactive.support.ProactiveEventTracker (1.0) <6251c07f-fe72-37e9-b45c-019b43a5be19> /Volumes/VOLUME/*/ProactiveEventTracker.framework/ProactiveEventTracker
       0x1467d4000 -        0x14683bfff com.apple.spotlight.metadata.utilities (1.0) <80bd53cf-6f5a-3bf7-97f6-7ef2eb7e9934> /Volumes/VOLUME/*/MetadataUtilities.framework/MetadataUtilities
       0x13eaec000 -        0x13eafbfff com.apple.spotlight.CSExattrCrypto (1.0) <07d8f612-a736-3e81-9689-86a299521f6e> /Volumes/VOLUME/*/CSExattrCrypto.framework/CSExattrCrypto
       0x140a6c000 -        0x140a87fff com.apple.CellularPlanManager (1.0) <ca127a46-f1cf-3bad-b1ac-946fd6eae6f0> /Volumes/VOLUME/*/CellularPlanManager.framework/CellularPlanManager
       0x146c34000 -        0x146cebfff com.apple.ClassKit (1.2) <5490bb36-bbd6-39d7-be6c-d9415381d57c> /Volumes/VOLUME/*/ClassKit.framework/ClassKit
       0x145760000 -        0x14579bfff com.apple.contacts.vCard (1.0) <535ceda8-0cc5-3a1a-a769-e1bc78c648d1> /Volumes/VOLUME/*/vCard.framework/vCard
       0x13c444000 -        0x13c44bfff com.apple.ManagedOrganizationContacts (1.2) <18886b94-b752-3920-ad98-ae4698288471> /Volumes/VOLUME/*/ManagedOrganizationContacts.framework/ManagedOrganizationContacts
       0x14a6d8000 -        0x14a797fff com.apple.CloudDocs (1.0) <4d3c974e-445c-37d9-8d7c-a16ad728ab71> /Volumes/VOLUME/*/CloudDocs.framework/CloudDocs
       0x13f638000 -        0x13f64ffff libprequelite.dylib (*) <19cdf706-ec87-3bac-9bca-a5b0fa5dbfe9> /Volumes/VOLUME/*/libprequelite.dylib
       0x1468a4000 -        0x1468ebfff com.apple.LiveCommunicationKit (1.0) <3156f7db-02ec-3005-8bdb-9f5bd86fc5e5> /Volumes/VOLUME/*/LiveCommunicationKit.framework/LiveCommunicationKit
       0x13dcc4000 -        0x13dccbfff com.apple.CallsUtilities (1.0) <7dd808e4-ebfe-39f4-9ecd-1f0aaff7cdda> /Volumes/VOLUME/*/CallsUtilities.framework/CallsUtilities
       0x1456c0000 -        0x1456dbfff com.apple.CallsXPC (1.0) <bc1ad98c-ea79-37d4-8d1e-d34931112d70> /Volumes/VOLUME/*/CallsXPC.framework/CallsXPC
       0x13eb18000 -        0x13eb1bfff libswiftCallKit.dylib (*) <d192166b-609c-3e67-bcbd-75f475ce5187> /Volumes/VOLUME/*/libswiftCallKit.dylib
       0x146f9c000 -        0x146fd3fff com.apple.RemoteTextInput (1.0) <8c93c450-cbbe-3dea-888e-dddec9f3f445> /Volumes/VOLUME/*/RemoteTextInput.framework/RemoteTextInput
       0x14a264000 -        0x14a2e3fff com.apple.MediaServices (1.0) <a5e7a6ce-f9de-34ee-bce9-b4f61c5c40d5> /Volumes/VOLUME/*/MediaServices.framework/MediaServices
       0x146d60000 -        0x146d8bfff com.apple.persistentconnection (1.0) <09042307-b950-3a01-b66e-26ee0597eae1> /Volumes/VOLUME/*/PersistentConnection.framework/PersistentConnection
       0x14a9c0000 -        0x14aa7bfff com.apple.SonicFoundation (1.0) <b53560ed-c0dc-3f0e-88b3-5ab8f58807bc> /Volumes/VOLUME/*/SonicFoundation.framework/SonicFoundation
       0x14a148000 -        0x14a18ffff com.apple.Osprey (1.0) <c7ecf17a-b70f-3ae1-bbce-d26ddb72ad03> /Volumes/VOLUME/*/Osprey.framework/Osprey
       0x14b8a0000 -        0x14c1e3fff com.apple.siri.tts.SiriTTS (1) <68c721a9-dd60-3001-ba38-05bc312cd4fa> /Volumes/VOLUME/*/SiriTTS.framework/SiriTTS
       0x13f5fc000 -        0x13f607fff com.apple.siri.SiriPowerInstrumentation (1) <499d00af-b28b-3654-810f-657a77ae5932> /Volumes/VOLUME/*/SiriPowerInstrumentation.framework/SiriPowerInstrumentation
       0x147024000 -        0x147037fff libswiftCoreAudio_Private.dylib (*) <e80d78af-910f-3882-a3a6-c88008efa018> /Volumes/VOLUME/*/libswiftCoreAudio_Private.dylib
       0x14ab20000 -        0x14ab7ffff com.apple.crossdevicearbitration.feedback (1.0) <45a025d6-af3c-30fa-8e74-7ab072cf8763> /Volumes/VOLUME/*/SiriCrossDeviceArbitrationFeedback.framework/SiriCrossDeviceArbitrationFeedback
       0x14706c000 -        0x147087fff com.apple.setupandmigration.SetupAssistantSupport (1.0) <ef7556c4-7077-354c-aa5a-daf2c4126e8f> /Volumes/VOLUME/*/SetupAssistantSupport.framework/SetupAssistantSupport
       0x14a380000 -        0x14a3abfff com.apple.icloud.FindMyDevice (1.0) <27c0e605-4ee3-3dd6-a6ca-778ac0a8342d> /Volumes/VOLUME/*/FindMyDevice.framework/FindMyDevice
       0x14a1d0000 -        0x14a1f7fff com.apple.IntlPreferences (1.0) <ad0b8e08-04ee-360d-96c3-5428f4689ab0> /Volumes/VOLUME/*/IntlPreferences.framework/IntlPreferences
       0x1470bc000 -        0x1470dbfff com.apple.icloud.FMCoreLite (1.0) <1b41e524-45a6-32b0-8d78-03589dabc730> /Volumes/VOLUME/*/FMCoreLite.framework/FMCoreLite
       0x14572c000 -        0x145747fff libresolv.9.dylib (*) <47a3e429-ee15-36c3-b15e-179fafe4f237> /Volumes/VOLUME/*/libresolv.9.dylib
       0x13ebac000 -        0x13ebb3fff com.apple.CommonAuth (4.0) <b2ac1156-4718-353f-ab9a-fbbe7270a498> /Volumes/VOLUME/*/CommonAuth.framework/CommonAuth
       0x14abec000 -        0x14ac9bfff com.apple.security.CryptoKit-Private (1.0) <a8d9cdc5-2d2a-3797-a598-70ebdeb126b4> /Volumes/VOLUME/*/CryptoKitPrivate.framework/CryptoKitPrivate
       0x14a8e4000 -        0x14a91ffff com.apple.awd (1.0) <9815983f-2217-340a-a8ec-6c0ceaf09019> /Volumes/VOLUME/*/WirelessDiagnostics.framework/WirelessDiagnostics
       0x14afa4000 -        0x14b0e3fff libAWDSupportFramework.dylib (*) <a4c7033e-c01e-3443-be15-7984eb823003> /Volumes/VOLUME/*/libAWDSupportFramework.dylib
       0x14a95c000 -        0x14a98ffff libAWDSupport.dylib (*) <422dd41b-04c6-3e2d-84be-fbf9afd49d37> /Volumes/VOLUME/*/libAWDSupport.dylib
       0x14a86c000 -        0x14a87ffff libprotobuf-lite.dylib (*) <57cb1d39-ab9f-3169-92ef-a8d8dcc347b8> /Volumes/VOLUME/*/libprotobuf-lite.dylib
       0x14adc8000 -        0x14ae23fff libprotobuf.dylib (*) <fcc04cc2-33d7-3a5c-8d9a-469ddde67d59> /Volumes/VOLUME/*/libprotobuf.dylib
       0x12fa6c000 -        0x12fa6ffff com.apple.CaptiveNetworkSupport (13.0) <021b6a7f-4d2e-3b21-bfa6-1097fdabf8a0> /Volumes/VOLUME/*/CaptiveNetwork.framework/CaptiveNetwork
       0x145800000 -        0x145813fff com.apple.SystemWake (1.0) <06605bd1-a5a2-3318-9e93-37759d9f2a8c> /Volumes/VOLUME/*/SystemWake.framework/SystemWake
       0x14cd48000 -        0x14d0effff com.apple.Sharing (2094.60.51) <aa7f0101-7e68-331d-8c42-e1b1f5e19c04> /Volumes/VOLUME/*/Sharing.framework/Sharing
       0x12fed8000 -        0x12fedbfff libutil.dylib (*) <b194b02d-3f45-3a31-8c84-db35239294eb> /Volumes/VOLUME/*/libutil.dylib
       0x14ae94000 -        0x14aebbfff com.apple.PrototypeTools (1.0) <7c78cd81-4f91-3369-8b13-450d5a525734> /Volumes/VOLUME/*/PrototypeTools.framework/PrototypeTools
       0x14b33c000 -        0x14b3a3fff com.apple.Pegasus (1.0) <3f98a2a1-1fd8-3336-bc2a-346786daf940> /Volumes/VOLUME/*/Pegasus.framework/Pegasus
       0x14b548000 -        0x14b5cbfff com.apple.TipKit (26.5) <adf6b19a-4c5f-3374-89c4-51e2514e11fc> /Volumes/VOLUME/*/TipKit.framework/TipKit
       0x13fae8000 -        0x13faf3fff com.apple.audio.AudioDataAnalysisFramework (1.0) <cb302002-6502-3b2a-8d5b-ba91840339e7> /Volumes/VOLUME/*/AudioDataAnalysis.framework/AudioDataAnalysis
       0x14c620000 -        0x14c693fff com.apple.SystemStatus (1.0) <afa744cf-fb87-3d6f-92d5-52387f6aa6fd> /Volumes/VOLUME/*/SystemStatus.framework/SystemStatus
       0x14c754000 -        0x14c80bfff com.apple.FrontBoard (1000.4.11) <4bedb879-f316-3ed2-83d3-35ea8cd084c1> /Volumes/VOLUME/*/FrontBoard.framework/FrontBoard
       0x14b430000 -        0x14b487fff com.apple.DocumentManager (1.0) <c1d9e1f0-613d-32ee-8c00-818c9c23bb97> /Volumes/VOLUME/*/DocumentManager.framework/DocumentManager
       0x151d90000 -        0x15407ffff com.apple.UIKitCore (1.0) <12463677-be34-38f7-9e11-3421bbf362fc> /Volumes/VOLUME/*/UIKitCore.framework/UIKitCore
       0x14d4a8000 -        0x14d5ebfff com.apple.ShareSheet (2094.60.51) <c3a6cb18-8b49-3622-88ee-acb40edcc974> /Volumes/VOLUME/*/ShareSheet.framework/ShareSheet
       0x14c8ec000 -        0x14c983fff com.apple.PrintKitUI (1.0) <a8eecbc3-bae4-3511-a8b6-7153ea6fd350> /Volumes/VOLUME/*/PrintKitUI.framework/PrintKitUI
       0x14b664000 -        0x14b6cbfff com.apple.DocumentManagerCore (1.0) <0a249889-620a-3e29-b7df-a3aeaaf710ab> /Volumes/VOLUME/*/DocumentManagerCore.framework/DocumentManagerCore
       0x14ad58000 -        0x14ad7bfff com.apple.CollectionViewCore (1.0) <0fca47a0-e139-3066-a10d-a1fd41d627d3> /Volumes/VOLUME/*/CollectionViewCore.framework/CollectionViewCore
       0x13ed14000 -        0x13ed17fff com.apple.UIUtilities (*) <c735b1e5-d185-3935-973f-52c029ec58cc> /Volumes/VOLUME/*/UIUtilities.framework/UIUtilities
       0x13fcf8000 -        0x13fcfffff com.apple.dt.XCTTargetBootstrap (26.5) <8c4334df-62f1-3050-997e-702ae97958e1> /Volumes/VOLUME/*/XCTTargetBootstrap.framework/XCTTargetBootstrap
       0x14db44000 -        0x14dd07fff com.apple.WebKitLegacy (8624) <9d812216-bd06-37f6-a580-615ea96eeca9> /Volumes/VOLUME/*/WebKitLegacy.framework/WebKitLegacy
       0x1448fc000 -        0x144903fff libapp_launch_measurement.dylib (*) <6678c1b5-e230-3e1a-9d1d-6eff36c8290c> /Volumes/VOLUME/*/libapp_launch_measurement.dylib
       0x14ad00000 -        0x14ad17fff com.apple.performance.DiagnosticRequest (1.4) <034e3861-2731-3f37-a6fe-fa0b905dce34> /Volumes/VOLUME/*/DiagnosticRequest.framework/DiagnosticRequest
       0x14d794000 -        0x14d89ffff com.apple.UIIntelligenceSupport (1.0) <2a3b377d-612a-3e6b-82f1-fd4302eca7aa> /Volumes/VOLUME/*/UIIntelligenceSupport.framework/UIIntelligenceSupport
       0x14def4000 -        0x14e03bfff com.apple.DesignLibrary (7.5.2) <f0585fa0-8c83-33bb-b112-35fff73f378b> /Volumes/VOLUME/*/DesignLibrary.framework/DesignLibrary
       0x14ca38000 -        0x14cae3fff com.apple.Gestures (9126.1.5) <baae6d5c-3e48-3f4d-bda3-356eaeabcfe7> /Volumes/VOLUME/*/Gestures.framework/Gestures
       0x14aefc000 -        0x14af0ffff com.apple.PointerUIServices (1.0) <59094d32-5346-39f8-87a6-abd4adfbf46e> /Volumes/VOLUME/*/PointerUIServices.framework/PointerUIServices
       0x14b748000 -        0x14b787fff com.apple.BacklightServices (1.0) <d70906f2-78dc-363c-bf48-f8c2f24266b9> /Volumes/VOLUME/*/BacklightServices.framework/BacklightServices
       0x14b248000 -        0x14b26bfff com.apple.CoreMaterial (1.0) <75474214-954f-31df-8d2a-ceb842b74c6d> /Volumes/VOLUME/*/CoreMaterial.framework/CoreMaterial
       0x14b7f0000 -        0x14b827fff com.apple.Pasteboard (1.0) <a197218d-fd18-30dc-9bd8-03e0174d3da2> /Volumes/VOLUME/*/Pasteboard.framework/Pasteboard
       0x144a60000 -        0x144a67fff com.apple.WritingTools (1.0) <bd8fa489-c411-3d61-a440-2c643c55457d> /Volumes/VOLUME/*/WritingTools.framework/WritingTools
       0x14b2a4000 -        0x14b2c3fff com.apple.Accessibility (1.0) <036937fa-1455-38d4-bc90-8ac9beda5eec> /Volumes/VOLUME/*/Accessibility.framework/Accessibility
       0x130988000 -        0x13098bfff com.apple.UpdateCycle (1) <bf336d09-edc7-3103-af09-7ba213f51c1f> /Volumes/VOLUME/*/UpdateCycle.framework/UpdateCycle
       0x14af34000 -        0x14af47fff com.apple.Symbols (1.0) <33212bf5-7720-3e89-b6e3-514cc4df4455> /Volumes/VOLUME/*/Symbols.framework/Symbols
       0x1566c4000 -        0x1573cffff com.apple.SwiftUICore (7.5.3) <b956b64a-af8d-3b4b-8027-702bb1f65374> /Volumes/VOLUME/*/SwiftUICore.framework/SwiftUICore
       0x14cbc4000 -        0x14cc07fff com.apple.PhysicsKit (*) <32502fa6-923a-3aee-8079-55f787c27302> /Volumes/VOLUME/*/PhysicsKit.framework/PhysicsKit
       0x158dbc000 -        0x15a867fff com.apple.JavaScriptCore (8624) <20c06bb8-b3a6-3c6d-9da8-44f6ee53c396> /Volumes/VOLUME/*/JavaScriptCore.framework/JavaScriptCore
       0x1606b4000 -        0x163eebfff com.apple.WebCore (8624) <8d58434a-b799-3cdd-81b1-7941f178f589> /Volumes/VOLUME/*/WebCore.framework/WebCore
       0x14cb3c000 -        0x14cb67fff libxslt.1.dylib (*) <afb19f5c-ce7b-3916-b09c-042539e492bc> /Volumes/VOLUME/*/libxslt.1.dylib
       0x14e608000 -        0x14e907fff libANGLE-shared.dylib (*) <b936867b-8e72-3af3-9d85-5536eb2c9139> /Volumes/VOLUME/*/WebCore.framework/Frameworks/libANGLE-shared.dylib
       0x14eae4000 -        0x14ed43fff com.apple.WebGPU (8624) <e32077b3-4190-3f04-b737-a4e4a3286768> /Volumes/VOLUME/*/WebGPU.framework/WebGPU
       0x14fc90000 -        0x1507e3fff libwebrtc.dylib (*) <11cdb82e-7f63-3c1e-906f-ec7fb0b65f06> /Volumes/VOLUME/*/WebCore.framework/Frameworks/libwebrtc.dylib
       0x106ae4000 -        0x106ae7fff libswiftCoreGraphics.dylib (*) <935b9148-ad72-3049-91a7-ab7da0131c0a> /Volumes/VOLUME/*/libswiftCoreGraphics.dylib
       0x14ccb4000 -        0x14ccd3fff libswiftSwiftOnoneSupport.dylib (*) <a1722f66-0d8b-398f-8932-a4ede8d0ac10> /Volumes/VOLUME/*/libswiftSwiftOnoneSupport.dylib
       0x110228000 -        0x11022bfff libswiftsys_time.dylib (*) <b3c48bce-32fc-3b20-8aec-72c0758bd93c> /Volumes/VOLUME/*/libswiftsys_time.dylib
       0x14da44000 -        0x14daa7fff com.apple.UserActivity (551) <c5de29b6-3e2c-34de-aa3c-32346c8ff586> /Volumes/VOLUME/*/UserActivity.framework/UserActivity
       0x14e20c000 -        0x14e273fff com.apple.AXRuntime (1.0.0) <f6d7318c-6b74-3be8-acf6-44534db4b388> /Volumes/VOLUME/*/AXRuntime.framework/AXRuntime
       0x110d88000 -        0x110d8bfff libSpatial.dylib (*) <c399bec3-29f9-3d68-8009-1d4b82406ec4> /Volumes/VOLUME/*/libSpatial.dylib
       0x14e3fc000 -        0x14e467fff com.apple.framework.PrintKit (3.0) <15cdcaab-1a97-3060-bcb2-c666e4c9683d> /Volumes/VOLUME/*/PrintKit.framework/PrintKit
       0x14f064000 -        0x14f157fff com.apple.TextAnimationSupport (7.2.1) <5489f3e3-f540-30b0-a30d-f57c63dad366> /Volumes/VOLUME/*/TextAnimationSupport.framework/TextAnimationSupport
       0x14d97c000 -        0x14d997fff com.apple.RecapPerformanceTesting (50) <daf67347-a196-3adb-a7fb-3ccd2df002f1> /Volumes/VOLUME/*/RecapPerformanceTesting.framework/RecapPerformanceTesting
       0x14f2dc000 -        0x14f373fff com.apple.ClockKit (1.0) <57f84ee3-2646-39f3-a5e7-19cbea94d604> /Volumes/VOLUME/*/ClockKit.framework/ClockKit
       0x14f474000 -        0x14f4f7fff com.apple.signpost.SignpostSupport (1.174.8) <60bfcc74-6ee5-3aaf-be32-87443b84fb06> /Volumes/VOLUME/*/SignpostSupport.framework/SignpostSupport
       0x14a230000 -        0x14a23bfff com.apple.performance.SignpostCollection (1.174.8) <ee4adca4-28d3-3726-95dd-7d3291d25905> /Volumes/VOLUME/*/SignpostCollection.framework/SignpostCollection
       0x14f5c0000 -        0x14f67bfff com.apple.TipKitCore (26.5) <dc6707b9-74b8-36da-9a4f-e17e86342467> /Volumes/VOLUME/*/TipKitCore.framework/TipKitCore
       0x11138c000 -        0x11138ffff libswiftPhotos.dylib (*) <f2c1a870-a090-3d75-ad2d-8f82c4a6250b> /Volumes/VOLUME/*/libswiftPhotos.dylib
       0x14f71c000 -        0x14f827fff com.apple.PDFKit (1.0) <d9441044-eafd-3ceb-b43a-7d11628dcd2a> /Volumes/VOLUME/*/PDFKit.framework/PDFKit
       0x150fc0000 -        0x1511d7fff com.apple.CloudPhotoLibrary (1.0) <5aef33b2-626a-344e-8fdc-06a4f8f0b2f7> /Volumes/VOLUME/*/CloudPhotoLibrary.framework/CloudPhotoLibrary
       0x14a8a4000 -        0x14a8b3fff com.apple.CloudPhotoServices (1.0) <9f6e412c-78c8-3603-adb1-0cfffb9a02b3> /Volumes/VOLUME/*/CloudPhotoServices.framework/CloudPhotoServices
       0x14f948000 -        0x14fa4ffff com.apple.CoreMediaStream (1.0) <051b20a9-bef7-3308-b3aa-8312aeb0f420> /Volumes/VOLUME/*/CoreMediaStream.framework/CoreMediaStream
       0x14d9cc000 -        0x14d9ebfff com.apple.CPAnalytics (1.0) <90a9b4b7-dfa4-3ae3-a9e6-4ceb94d442af> /Volumes/VOLUME/*/CPAnalytics.framework/CPAnalytics
       0x14e2ec000 -        0x14e323fff com.apple.ImageCaptureCore (2020.2.2) <ea4042ce-322d-3291-bfc3-7a4509a13e15> /Volumes/VOLUME/*/ImageCaptureCore.framework/ImageCaptureCore
       0x14e36c000 -        0x14e39ffff com.apple.photo.MediaConversionService (11.0) <f75e0756-6618-3764-9cdb-bb78b945e445> /Volumes/VOLUME/*/MediaConversionService.framework/MediaConversionService
       0x14b4fc000 -        0x14b50ffff com.apple.PhotoFoundation (1.0) <1ca048e4-40cc-37f0-9e32-0a9fb8b1eb33> /Volumes/VOLUME/*/PhotoFoundation.framework/PhotoFoundation
       0x15c5e0000 -        0x15cf0bfff com.apple.PhotoLibraryServices (1.0) <6c752178-99f4-33c4-8431-7f7c4cb838e6> /Volumes/VOLUME/*/PhotoLibraryServices.framework/PhotoLibraryServices
       0x150b7c000 -        0x150c93fff com.apple.PhotoLibraryServicesCore (1.0) <22a6b308-d15f-3880-af90-1f0c0d474b1c> /Volumes/VOLUME/*/PhotoLibraryServicesCore.framework/PhotoLibraryServicesCore
       0x151698000 -        0x1517c3fff com.apple.PhotosFormats (1.0) <ccf81616-648d-3608-b7d0-172c43644b2b> /Volumes/VOLUME/*/PhotosFormats.framework/PhotosFormats
       0x14ef1c000 -        0x14efc3fff com.apple.cloudkit.MMCS (1.3) <b6994df5-87f1-34c0-bd8f-8a80ba719f67> /Volumes/VOLUME/*/MMCS.framework/MMCS
       0x14e50c000 -        0x14e55ffff com.apple.ChunkingLibrary (2300.104) <c0837fcd-1306-3c95-b48f-4d9d2c6e3a92> /Volumes/VOLUME/*/ChunkingLibrary.framework/ChunkingLibrary
       0x14e12c000 -        0x14e14bfff com.apple.AssetCacheServices (140.120.2) <65d85114-c29f-3330-96eb-ec87604bee8a> /Volumes/VOLUME/*/AssetCacheServices.framework/AssetCacheServices
       0x14edf8000 -        0x14ee53fff libswiftDemangle.dylib (*) <4c674b42-e6bb-3457-b7b9-28ab9a1b8635> /Volumes/VOLUME/*/libswiftDemangle.dylib
       0x14ee7c000 -        0x14eea7fff com.apple.ImageCaptureDevices (2020.2.2) <9ef62c18-c374-3fa3-8813-9567d0759e2b> /Volumes/VOLUME/*/ImageCaptureDevices.framework/ImageCaptureDevices
       0x14e174000 -        0x14e193fff com.apple.mediastream (1.0) <7cf17cc9-3c39-34f9-9dc8-25920038a2ed> /Volumes/VOLUME/*/MediaStream.framework/MediaStream
       0x151408000 -        0x1514f7fff com.apple.NLP (1.0) <1bee8996-699c-346b-b2ab-b707e4d6ee68> /Volumes/VOLUME/*/NLP.framework/NLP
       0x14fbb4000 -        0x14fbe7fff com.apple.PhotosImagingFoundation (11.0) <9ab1a566-45a5-3555-9a22-4c36ca3ebc7c> /Volumes/VOLUME/*/PhotosImagingFoundation.framework/PhotosImagingFoundation
       0x150e6c000 -        0x150ebbfff com.apple.PhotosIntelligenceCore (1.0) <88dac23d-1365-388b-8a95-e61d77454f72> /Volumes/VOLUME/*/PhotosIntelligenceCore.framework/PhotosIntelligenceCore
       0x151928000 -        0x15199bfff com.apple.ToneLibrary (1.0) <74f6c3f2-7e40-3440-b2cd-14a887f4f562> /Volumes/VOLUME/*/ToneLibrary.framework/ToneLibrary
       0x15edb0000 -        0x15f9b3fff com.apple.private.EmbeddedAcousticRecognition (1.0) <8b75ca0a-c7d1-3ed6-84a1-0aa61de1f3ea> /Volumes/VOLUME/*/EmbeddedAcousticRecognition.framework/EmbeddedAcousticRecognition
       0x151b80000 -        0x151bfbfff com.apple.EmojiFoundation (1.0) <de4e3307-9008-33de-85c7-b99c1ce07244> /Volumes/VOLUME/*/EmojiFoundation.framework/EmojiFoundation
       0x151a18000 -        0x151aa3fff com.apple.vectordb.VectorSearch (1.0) <5200e62f-4351-34a5-8f4e-3f51758f2d0a> /Volumes/VOLUME/*/VectorSearch.framework/VectorSearch
       0x15b8ec000 -        0x15bc3ffff com.apple.SDAPI (1.0) <e0e68f07-34ef-37f8-aae9-368d5ab4e8bb> /Volumes/VOLUME/*/SDAPI.framework/SDAPI
       0x15b63c000 -        0x15b78ffff com.apple.GRDB.GRDBInternal (1.0) <28ba3767-3837-396d-9e49-e39ca94c4b63> /Volumes/VOLUME/*/GRDBInternal.framework/GRDBInternal
       0x140994000 -        0x140997fff com.apple.CorePDF (5.0) <b0655c45-e857-3957-9e45-5fcd4ca29ae1> /Volumes/VOLUME/*/CorePDF.framework/CorePDF
       0x145c90000 -        0x145c97fff com.apple.RevealCore (1.0) <c3cf03bb-24a7-3b2c-9098-094446a64730> /Volumes/VOLUME/*/RevealCore.framework/RevealCore
       0x150f14000 -        0x150f63fff com.apple.CorePrediction (1.0) <e9dfe4e4-687b-315c-9d8e-6e0fc9e2d398> /Volumes/VOLUME/*/CorePrediction.framework/CorePrediction
       0x15bdd0000 -        0x15be6bfff com.apple.InstallCoordination (1.0) <74f240f1-44f0-33ee-8d8d-09b18f0c1986> /Volumes/VOLUME/*/InstallCoordination.framework/InstallCoordination
       0x15bf00000 -        0x15bfb7fff com.apple.AppStoreDaemon (1.0) <6bb2282f-7052-3ffa-a08a-b05365bedbf9> /Volumes/VOLUME/*/AppStoreDaemon.framework/AppStoreDaemon
       0x14fb34000 -        0x14fb5ffff com.apple.BrowserEngineKit (1.0) <44a60d53-8aca-377a-a4c8-d2181991cdce> /Volumes/VOLUME/*/BrowserEngineKit.framework/BrowserEngineKit
       0x14af6c000 -        0x14af77fff com.apple.GameController.UI (*) <e0863649-ad37-3dcf-bd79-f7c39ca2591e> /Volumes/VOLUME/*/GameControllerUI.framework/GameControllerUI
       0x15d774000 -        0x15d8cffff com.apple.GameController (*) <ebb879a9-ad39-3a6f-9bee-600bf1da0d60> /Volumes/VOLUME/*/GameController.framework/GameController
       0x14fc34000 -        0x14fc57fff com.apple.SharedWebCredentials (1001) <e089f325-280a-35ef-aafb-3b5be17ed5bb> /Volumes/VOLUME/*/SharedWebCredentials.framework/SharedWebCredentials
       0x135e34000 -        0x135e3bfff com.apple.CoreOptimization (1.0) <330fc720-2640-3f56-b140-215a774a6d89> /Volumes/VOLUME/*/CoreOptimization.framework/CoreOptimization
       0x165988000 -        0x165f1bfff com.apple.AppleMediaServices (1.0) <a75b54f3-44b6-334d-bac2-e1ea0e4dcfff> /Volumes/VOLUME/*/AppleMediaServices.framework/AppleMediaServices
       0x1515a0000 -        0x1515cffff com.apple.CoreFollowUp (1.0) <3175a1d8-262d-39c4-b216-59b7d70cdffc> /Volumes/VOLUME/*/CoreFollowUp.framework/CoreFollowUp
       0x15dac4000 -        0x15de23fff com.apple.AppleMediaServicesKitInternal (1.5.5) <6c43ee0e-c775-3c45-9e01-187686449200> /Volumes/VOLUME/*/AppleMediaServicesKitInternal.framework/AppleMediaServicesKitInternal
       0x15c0c4000 -        0x15c1a3fff com.apple.coreidv.CoreIDV (8.504) <1731a57e-22a7-311a-a641-9e6959047162> /Volumes/VOLUME/*/CoreIDV.framework/CoreIDV
       0x15e2d0000 -        0x15e547fff com.apple.coreidv.CoreIDVShared (8.504) <f767c251-6e37-315d-974a-b6eca7fe18d5> /Volumes/VOLUME/*/CoreIDVShared.framework/CoreIDVShared
       0x150dc8000 -        0x150dfbfff com.apple.CBORLibrary (1.0) <4f5df7e7-3f82-3297-9776-8660694f2193> /Volumes/VOLUME/*/CBORLibrary.framework/CBORLibrary
       0x151610000 -        0x15163bfff com.apple.security.SwiftASN1Internal (1.0) <eb09c436-def1-345e-8c4b-b3bff0515a8d> /Volumes/VOLUME/*/SwiftASN1Internal.framework/SwiftASN1Internal
       0x146dc8000 -        0x146dcffff com.apple.BrowserEngineCore (1.0) <d56c244f-d879-3376-9477-2d1216f7fff7> /Volumes/VOLUME/*/BrowserEngineCore.framework/BrowserEngineCore
       0x14cb84000 -        0x14cb93fff com.apple.BackgroundTasks (1.0) <2ad61e75-0852-3b6f-9a49-be782934b4ba> /Volumes/VOLUME/*/BackgroundTasks.framework/BackgroundTasks
       0x15c2a0000 -        0x15c333fff com.apple.GameControllerFoundation (*) <2fed817d-35a1-3708-a84a-fe8bb7413657> /Volumes/VOLUME/*/GameControllerFoundation.framework/GameControllerFoundation
       0x151ce8000 -        0x151d27fff com.apple.ReplayKit (1.0) <1d4a3d70-777a-307b-9c67-d8ee468c8dc6> /Volumes/VOLUME/*/ReplayKit.framework/ReplayKit
       0x151ae0000 -        0x151afbfff com.apple.ExternalAccessory (1.0.0) <2c278b45-1088-32f0-a5b0-426a87f850b0> /Volumes/VOLUME/*/ExternalAccessory.framework/ExternalAccessory
       0x14b2fc000 -        0x14b307fff com.apple.GameControllerIO (*) <0100e0c1-202d-328a-af3d-f2ebd8ecc062> /Volumes/VOLUME/*/GameControllerIO.framework/GameControllerIO
       0x14db0c000 -        0x14db1ffff com.apple.GameControllerSettings (*) <37f723e1-14b7-3427-9b71-fe5db1f2d149> /Volumes/VOLUME/*/GameControllerSettings.framework/GameControllerSettings
       0x15b51c000 -        0x15b58ffff com.apple.CoreHaptics (1.0) <87639339-03fd-3833-844a-66fed368a436> /Volumes/VOLUME/*/CoreHaptics.framework/CoreHaptics
       0x151b30000 -        0x151b4bfff com.apple.IAP (1.0) <419f3d15-43b4-32bb-8148-e1a01ffb6a50> /Volumes/VOLUME/*/IAP.framework/IAP
       0x14e1cc000 -        0x14e1dffff com.apple.HID (1.0) <04d84e2b-7506-3a96-b337-f22f07e9509a> /Volumes/VOLUME/*/HID.framework/HID
       0x15dec0000 -        0x15df3bfff com.apple.TimeSync (1.0) <b3cbf587-4c5b-3c65-81b8-126faa26689b> /Volumes/VOLUME/*/TimeSync.framework/TimeSync
       0x14b874000 -        0x14b87ffff com.apple.audio.IOKitten (300.1) <bf29e481-7e61-3996-8283-f7932398592b> /Volumes/VOLUME/*/IOKitten.framework/IOKitten
       0x167258000 -        0x167a4ffff com.apple.AVConference (3.0) <d71c6d53-9f28-30c9-a2b6-479df3991c4b> /Volumes/VOLUME/*/AVConference.framework/AVConference
       0x15dfdc000 -        0x15e0bbfff com.apple.SensitiveContentAnalysis (1.0) <f03e9481-7eeb-37da-ae16-0fcfd455d28a> /Volumes/VOLUME/*/SensitiveContentAnalysis.framework/SensitiveContentAnalysis
       0x14cc80000 -        0x14cc97fff com.apple.SignalCompression (1.0) <894ed84c-0d08-3d67-869b-12788ee6a798> /Volumes/VOLUME/*/SignalCompression.framework/SignalCompression
       0x15b4a8000 -        0x15b4e3fff com.apple.ICE (3.0) <daf1cf0f-fe37-35be-bbde-a43a109d6571> /Volumes/VOLUME/*/AVConference.framework/Frameworks/ICE.framework/ICE
       0x13ed2c000 -        0x13ed2ffff com.apple.LegacyHandle (3.0) <94547076-efd6-35d9-a947-fe43d7bc0c90> /Volumes/VOLUME/*/AVConference.framework/Frameworks/LegacyHandle.framework/LegacyHandle
       0x14a3f0000 -        0x14a3f7fff com.apple.SimpleKeyExchange (3.0) <6c096e38-c760-3efa-9858-808fba096929> /Volumes/VOLUME/*/AVConference.framework/Frameworks/SimpleKeyExchange.framework/SimpleKeyExchange
       0x145718000 -        0x14571bfff com.apple.snatmap (3.0) <faf343db-b1ec-337e-923c-8a8963323af8> /Volumes/VOLUME/*/AVConference.framework/Frameworks/snatmap.framework/snatmap
       0x15e914000 -        0x15ea03fff com.apple.ViceroyTrace (3.0) <15a250da-3780-374a-86e8-af82532e765b> /Volumes/VOLUME/*/AVConference.framework/Frameworks/ViceroyTrace.framework/ViceroyTrace
       0x1668fc000 -        0x166c97fff com.apple.coremotion (3075.0.8) <c5e28ebf-2bd6-358c-8caf-e4ee62780c9a> /Volumes/VOLUME/*/CoreMotion.framework/CoreMotion
       0x168928000 -        0x168df3fff com.apple.MediaAnalysis (1.0) <36514498-2c20-34e0-9b5a-05d86913467a> /Volumes/VOLUME/*/MediaAnalysis.framework/MediaAnalysis
       0x15c404000 -        0x15c443fff com.apple.ManagedSettingsObjC (267.122.1) <fad216ae-783b-39b9-b821-21fbbe41b906> /Volumes/VOLUME/*/ManagedSettingsObjC.framework/ManagedSettingsObjC
       0x15eb18000 -        0x15ec0ffff com.apple.FamilyCircle (1.0) <64803d8d-62cd-3a7d-baec-9a422f1f0c2a> /Volumes/VOLUME/*/FamilyCircle.framework/FamilyCircle
       0x14cc4c000 -        0x14cc53fff libswiftVideoToolbox.dylib (*) <6330800c-f728-33fc-b6c4-ece4133de471> /Volumes/VOLUME/*/libswiftVideoToolbox.dylib
       0x146938000 -        0x14693bfff com.apple.ftclientservices (10.0) <743259ec-acb9-368d-9b3e-2ac9339b484d> /Volumes/VOLUME/*/FTClientServices.framework/FTClientServices
       0x14e5d4000 -        0x14e5e3fff com.apple.StorageContainersPrivate (1.0) <19993a2c-2ea7-3422-b3d0-a152cd8cde15> /Volumes/VOLUME/*/StorageContainersPrivate.framework/StorageContainersPrivate
       0x166438000 -        0x16652bfff com.apple.accessibility.AXMediaUtilities (1.0) <4c586cb7-ae57-3466-8460-8da41f9982bc> /Volumes/VOLUME/*/AXMediaUtilities.framework/AXMediaUtilities
       0x15c4b0000 -        0x15c50bfff com.apple.CoreAppleCVA (4.4.0) <eb722b01-1960-3443-9e38-f3b8e8719076> /Volumes/VOLUME/*/CoreAppleCVA.framework/CoreAppleCVA
       0x14694c000 -        0x14694ffff com.apple.MediaAnalysisGeneration (1.0) <bd9ace1e-f075-36ab-8070-31a423e320a6> /Volumes/VOLUME/*/MediaAnalysisGeneration.framework/MediaAnalysisGeneration
       0x12e3cc000 -        0x12e3cffff com.apple.MediaAnalysisPhotosServices (1.0) <8931ded7-d127-3839-90c4-db04046b01bb> /Volumes/VOLUME/*/MediaAnalysisPhotosServices.framework/MediaAnalysisPhotosServices
       0x15e710000 -        0x15e76bfff com.apple.MediaAnalysisServices (1.0) <5d09a80d-5503-3e4a-bccb-56cacfa6a89e> /Volumes/VOLUME/*/MediaAnalysisServices.framework/MediaAnalysisServices
       0x169bac000 -        0x16a18bfff com.apple.PhotosIntelligence (1.0) <e1b6fca6-f925-35a6-9a45-3989a1c4651f> /Volumes/VOLUME/*/PhotosIntelligence.framework/PhotosIntelligence
       0x168078000 -        0x168323fff com.apple.SoundAnalysis (1.0) <4b1936dd-ddd1-3f93-8fe5-9637e5fc1ba5> /Volumes/VOLUME/*/SoundAnalysis.framework/SoundAnalysis
       0x15e7f0000 -        0x15e873fff com.apple.stickers (1.0) <a21cafb6-e43b-33f8-b306-5beaae52dc7e> /Volumes/VOLUME/*/Stickers.framework/Stickers
       0x16a5d8000 -        0x16aa77fff com.apple.VisualLookUp (0.1) <b46f733c-7c3a-3442-97a8-8a5694bc0624> /Volumes/VOLUME/*/VisualLookUp.framework/VisualLookUp
       0x1603f0000 -        0x1604d3fff com.apple.VisualUnderstanding (1.0) <d7ab6f62-6a53-3f60-a506-5c242a92a569> /Volumes/VOLUME/*/VisualUnderstanding.framework/VisualUnderstanding
       0x15b5e8000 -        0x15b603fff com.apple.accessibility.AXAssetLoader (1.0) <f285409d-14b9-3ca4-8e66-a88ffc769ed5> /Volumes/VOLUME/*/AXAssetLoader.framework/AXAssetLoader
       0x15e16c000 -        0x15e1bffff com.apple.PhotosSpatialMediaCore (1.0) <f4ac6968-21c6-3e90-a161-e499da479617> /Volumes/VOLUME/*/PhotosSpatialMediaCore.framework/PhotosSpatialMediaCore
       0x16f238000 -        0x16f757fff com.apple.MusicKit (1.0) <16ef51a3-9242-3fda-9663-e4461b296b95> /Volumes/VOLUME/*/MusicKit.framework/MusicKit
       0x15c554000 -        0x15c59bfff com.apple.FlexMusicKit (1.0) <00bc0357-d45c-3fea-a681-4b22568c3125> /Volumes/VOLUME/*/FlexMusicKit.framework/FlexMusicKit
       0x170894000 -        0x170fe7fff com.apple.MusicKit.Internal (1.0) <1b087232-8a3f-33c1-a033-68ce9cb6bb09> /Volumes/VOLUME/*/MusicKitInternal.framework/MusicKitInternal
       0x1684a4000 -        0x1686bbfff com.apple.photo.PhotoImaging (1.0) <1592028c-211b-35f4-a5fa-c1f63d868462> /Volumes/VOLUME/*/PhotoImaging.framework/PhotoImaging
       0x15e21c000 -        0x15e27ffff com.apple.mxi (1.0) <cebbfbec-76de-3250-9cfb-3807e1df81aa> /Volumes/VOLUME/*/MXI.framework/MXI
       0x17279c000 -        0x172cfbfff com.apple.RealityFoundation (1.0) <464076f8-ab17-3166-ba42-1b8f61e9f5c7> /Volumes/VOLUME/*/RealityFoundation.framework/RealityFoundation
       0x131448000 -        0x13144bfff com.apple.USDKitTrampoline (*) <99fb1ff8-93b4-37d8-acb9-89ec7c111bdc> /Volumes/VOLUME/*/USDKit.framework/USDKit
       0x160540000 -        0x1605bbfff com.apple.USDObjCKit (1.0) <e2d1b073-452d-3cad-8433-31c0fdf03e52> /Volumes/VOLUME/*/USDObjCKit.framework/USDObjCKit
       0x175df8000 -        0x17783bfff libusd_ms.dylib (*) <3c201b06-acdb-3005-8833-efa374e46c1d> /Volumes/VOLUME/*/libusd_ms.dylib
       0x14a8d0000 -        0x14a8d3fff com.apple.USDLib_FormatLoaderProxy (1.0) <a2a5ddd5-aa5f-3317-afc9-87864a3b8aa0> /Volumes/VOLUME/*/USDLib_FormatLoaderProxy.framework/USDLib_FormatLoaderProxy
       0x117310000 -        0x117313fff libswift_errno.dylib (*) <0d27e972-b6a5-3ca2-8422-6bf422b1c4a2> /Volumes/VOLUME/*/libswift_errno.dylib
       0x16fbac000 -        0x16fee3fff com.apple.CoreRealityIO (1.0) <6150fd32-e9f6-38ee-b2bf-bba91d30f51d> /Volumes/VOLUME/*/CoreRealityIO.framework/CoreRealityIO
       0x178528000 -        0x179953fff com.apple.CoreRE (1.0) <ce725d38-6f80-35a6-8bfd-974b392e4eeb> /Volumes/VOLUME/*/CoreRE.framework/CoreRE
       0x166dc4000 -        0x166e5ffff com.apple.RealityFusion (1.0) <d8607cfd-ecc4-3209-b9b8-bf23a1895c55> /Volumes/VOLUME/*/RealityFusion.framework/RealityFusion
       0x15b830000 -        0x15b84bfff com.apple.DirectResource (1.0) <737378e0-a57a-3449-bd43-20de41491568> /Volumes/VOLUME/*/DirectResource.framework/DirectResource
       0x166760000 -        0x166803fff com.apple.CoreIK (1.0) <15cc5047-f325-3eb8-b26a-6ce84b9ce6fb> /Volumes/VOLUME/*/CoreIK.framework/CoreIK
       0x1691d8000 -        0x169303fff com.apple.Geometry (1.0) <b5c06739-4421-3459-a67b-1b50398f7ad9> /Volumes/VOLUME/*/Geometry.framework/Geometry
       0x16ad68000 -        0x16af27fff com.apple.shadergraph (*) <50744647-5ac5-3317-b8d3-30507ceb08e8> /Volumes/VOLUME/*/ShaderGraph.framework/ShaderGraph
       0x17162c000 -        0x17191ffff com.apple.audio.PHASE (1.0) <ae0c21ce-56ea-3b73-8ba4-0128e9ddba85> /Volumes/VOLUME/*/PHASE.framework/PHASE
       0x166f1c000 -        0x166fa3fff com.apple.RESync (1.0) <8273ef48-15e3-3dc9-808e-b1d723a97ca7> /Volumes/VOLUME/*/RESync.framework/RESync
       0x15b888000 -        0x15b8a7fff com.apple.accessibility.PhotosensitivityProcessing (1.0) <5530e35d-ce58-3301-bf33-5b534750a087> /Volumes/VOLUME/*/PhotosensitivityProcessing.framework/PhotosensitivityProcessing
       0x169428000 -        0x16957ffff com.apple.ModelIO (268.2.2) <2104618e-cc19-333b-8faf-222b5ac986af> /Volumes/VOLUME/*/ModelIO.framework/ModelIO
       0x167014000 -        0x16709ffff libAudioDSPCore.dylib (*) <307860e6-86d2-3430-bf98-89d8d7c454b2> /Volumes/VOLUME/*/libAudioDSPCore.dylib
       0x14eeec000 -        0x14eefbfff com.apple.AcousticMaterials (1.0) <61db9761-1f0e-38c3-a92e-11c8ddb6eba9> /Volumes/VOLUME/*/AcousticMaterials.framework/AcousticMaterials
       0x170380000 -        0x170457fff com.apple.ShazamKit (1.0.0) <e1ea7f6a-1c0c-3858-b087-f2d39b585a5e> /Volumes/VOLUME/*/ShazamKit.framework/ShazamKit
       0x1605f4000 -        0x160617fff com.apple.ShazamCore (1.0.0) <16df39b9-d032-3a59-aacb-2ade376326ae> /Volumes/VOLUME/*/ShazamCore.framework/ShazamCore
       0x171b60000 -        0x171dd3fff com.apple.iTunesCloud (1.0) <ffb0c195-c080-3d4a-8234-7e3cfebfdccb> /Volumes/VOLUME/*/iTunesCloud.framework/iTunesCloud
       0x14cd1c000 -        0x14cd23fff com.apple.DAAPKit (1.0) <5ea4e174-2d02-3972-ba8b-b8e92cfdc16f> /Volumes/VOLUME/*/DAAPKit.framework/DAAPKit
       0x17207c000 -        0x17237bfff com.apple.MusicLibrary (1.0.0) <e88a20c0-f6db-312d-a474-8987784a0654> /Volumes/VOLUME/*/MusicLibrary.framework/MusicLibrary
       0x17395c000 -        0x173c87fff com.apple.MediaLibraryCore (1.0) <5c1ad378-ef29-353d-b443-bf4c265bf485> /Volumes/VOLUME/*/MediaLibraryCore.framework/MediaLibraryCore
       0x173e44000 -        0x1740f7fff com.apple.photo.NeutrinoCore (1.0) <8d2eaf79-6ad5-39a7-bd23-40a36cd1dfc1> /Volumes/VOLUME/*/NeutrinoCore.framework/NeutrinoCore
       0x15ed0c000 -        0x15ed33fff com.apple.i18n.RecencyService (1.0) <1a1dc354-25d1-3cfa-9950-0f0926f6b076> /Volumes/VOLUME/*/Stickers.framework/Support/RecencyService.framework/RecencyService
       0x174354000 -        0x174763fff com.apple.Coherence (1.0) <37234a60-bedc-3546-9f81-2afb5da114bb> /Volumes/VOLUME/*/Coherence.framework/Coherence
       0x136498000 -        0x13649bfff com.apple.i18n.ServiceShared (1.0) <244f2c64-9992-3e82-9914-9dfab4af2bc5> /Volumes/VOLUME/*/Stickers.framework/Support/ServiceShared.framework/ServiceShared
       0x166860000 -        0x1668a7fff com.apple.FusionTracker (1.0) <d8d2ad58-6c0b-30d5-8fd7-86a733692ab7> /Volumes/VOLUME/*/FusionTracker.framework/FusionTracker
       0x17a83c000 -        0x17b26bfff com.apple.PegasusAPI (1.0) <da1b38c1-956e-34e1-ab82-ef79378292ca> /Volumes/VOLUME/*/PegasusAPI.framework/PegasusAPI
       0x1695f8000 -        0x16968bfff com.apple.PegasusKit (1.0) <4b60c6de-7762-3cef-a5f2-e2013a0c0a75> /Volumes/VOLUME/*/PegasusKit.framework/PegasusKit
       0x169938000 -        0x169a37fff com.apple.siri.parsec.CoreParsec (1.0) <de022525-b12b-30bb-bd9c-c6bb9ed25e89> /Volumes/VOLUME/*/CoreParsec.framework/CoreParsec
       0x1751ec000 -        0x17566ffff com.apple.SearchFoundation (1.0) <af98a512-1d49-33e9-b134-084208b4721b> /Volumes/VOLUME/*/SearchFoundation.framework/SearchFoundation
       0x167108000 -        0x167157fff com.apple.PegasusConfiguration (1.0) <440c48ec-a69a-3e0d-ae64-f99f746abac5> /Volumes/VOLUME/*/PegasusConfiguration.framework/PegasusConfiguration
       0x169708000 -        0x169783fff com.apple.GRPCCoreInternal (2.0.0) <9d9ca837-4ff7-3092-9501-73d59ab53f97> /Volumes/VOLUME/*/GRPCCoreInternal.framework/GRPCCoreInternal
       0x15b450000 -        0x15b46ffff com.apple.GRPCProtobufInternal (2.0.0) <b7dde3eb-4dc1-340e-aa36-fc1eed75f05d> /Volumes/VOLUME/*/GRPCProtobufInternal.framework/GRPCProtobufInternal
       0x1666d0000 -        0x16670ffff com.apple.GRPCSwiftURLSessionTransportInternal (1.3.0) <661ad2ac-f7ee-39c9-b35e-697739369975> /Volumes/VOLUME/*/GRPCURLSessionTransportInternal.framework/GRPCURLSessionTransportInternal
       0x166660000 -        0x166693fff com.apple.GameKit (820.5.18) <021e3711-6440-3718-a267-bc1688406417> /Volumes/VOLUME/*/GameKit.framework/GameKit
       0x14a9ac000 -        0x14a9affff libswiftGLKit.dylib (*) <68bd97d6-f2a9-324c-a237-376509b06f82> /Volumes/VOLUME/*/libswiftGLKit.dylib
       0x14ad38000 -        0x14ad3bfff libswiftGameplayKit.dylib (*) <f3371b80-7df0-39ed-b6d5-6acca4db0e2f> /Volumes/VOLUME/*/libswiftGameplayKit.dylib
       0x14b324000 -        0x14b327fff libswiftModelIO.dylib (*) <2456efff-9ccc-347a-9760-e11c094c48bc> /Volumes/VOLUME/*/libswiftModelIO.dylib
       0x14da24000 -        0x14da27fff libswiftSceneKit.dylib (*) <807ec03c-fae0-37c8-88bd-afdc55c418d8> /Volumes/VOLUME/*/libswiftSceneKit.dylib
       0x14adb0000 -        0x14adb3fff libswiftSpriteKit.dylib (*) <03fdf501-35fe-39e8-b9bc-9dc203a92886> /Volumes/VOLUME/*/libswiftSpriteKit.dylib
       0x174aa8000 -        0x174ba3fff com.apple.AuthenticationServicesCore (1.0) <651ef6e8-d179-383c-a81d-34c6eca51c09> /Volumes/VOLUME/*/AuthenticationServicesCore.framework/AuthenticationServicesCore
       0x1706e8000 -        0x170753fff com.apple.OnBoardingKit (1.0) <e612b5dd-d1f4-310d-8c8a-d01bb6efc158> /Volumes/VOLUME/*/OnBoardingKit.framework/OnBoardingKit
       0x175b00000 -        0x175c37fff com.apple.preferences-framework (1) <97bb9d1a-7897-338e-92a4-6ce4e8d342e1> /Volumes/VOLUME/*/Preferences.framework/Preferences
       0x174e78000 -        0x174f6bfff com.apple.WebBookmarks (8624) <75055fc7-f51d-323a-b898-61dd594b5459> /Volumes/VOLUME/*/WebBookmarks.framework/WebBookmarks
       0x17c61c000 -        0x17cafffff com.apple.ContactsUI (1.0.0) <98960055-d6cc-37d1-b9ba-f5d9898d1e3b> /Volumes/VOLUME/*/ContactsUI.framework/ContactsUI
       0x150e48000 -        0x150e4ffff com.apple.CertUI (1.0) <0bf95b13-418d-3e7c-9172-0a5c82dd2ccf> /Volumes/VOLUME/*/CertUI.framework/CertUI
       0x17d0cc000 -        0x17d51bfff com.apple.PencilKit (1.0) <229aa7d9-178d-3036-b391-f04e9fc4e684> /Volumes/VOLUME/*/PencilKit.framework/PencilKit
       0x1725d8000 -        0x172653fff com.apple.ContactsAutocompleteUI (1.0) <b280760d-63de-38b8-9a9b-acc7ffe092d3> /Volumes/VOLUME/*/ContactsAutocompleteUI.framework/ContactsAutocompleteUI
       0x17bf50000 -        0x17c127fff com.apple.messageui (1.0.0) <05383591-586d-3e34-8e1c-237656c8f9aa> /Volumes/VOLUME/*/MessageUI.framework/MessageUI
       0x17e280000 -        0x17e74ffff com.apple.Passwords.PasswordManagerUI.framework (1.0) <c23330ea-4278-3c7b-a8a9-0fa338933b30> /Volumes/VOLUME/*/PasswordManagerUI.framework/PasswordManagerUI
       0x1748d8000 -        0x174933fff com.apple.DeviceManagement (1.0) <1553dd9d-ff4d-3169-b4e1-79a349d7c162> /Volumes/VOLUME/*/DeviceManagement.framework/DeviceManagement
       0x150e28000 -        0x150e2bfff com.apple.browsersupportkit.framework (26.5) <906dc30f-f2fe-3741-91cc-141d24a790ad> /Volumes/VOLUME/*/BrowserSupportKit.framework/BrowserSupportKit
       0x15ed5c000 -        0x15ed6ffff com.apple.BiometricKit2 (1.0) <5c6aae88-d76b-3423-902f-4d8c52cc5191> /Volumes/VOLUME/*/BiometricKit.framework/BiometricKit
       0x3014e8000 -        0x301e5ffff com.apple.PassKitCore (1.0) <c1726482-d02c-3226-bd34-97f69da7daf7> /Volumes/VOLUME/*/PassKitCore.framework/PassKitCore
       0x17bb74000 -        0x17bc37fff com.apple.AppStoreComponents (1.0) <6a696c41-5f1d-32f9-a7c3-42c6472710d6> /Volumes/VOLUME/*/AppStoreComponents.framework/AppStoreComponents
       0x17eb5c000 -        0x17f023fff com.apple.mobilesafari.framework (26.5) <b767803b-6321-3c07-bd33-f93220079dcd> /Volumes/VOLUME/*/MobileSafari.framework/MobileSafari
       0x17dd94000 -        0x17df63fff com.apple.Safari.Shared.UI (8624) <f694a894-e433-3798-97d1-77bb14b469b1> /Volumes/VOLUME/*/SafariSharedUI.framework/SafariSharedUI
       0x1697d8000 -        0x169817fff com.apple.SafariFoundation (8624) <95ec1a1f-160a-3509-9ac9-49a7fb768d9f> /Volumes/VOLUME/*/SafariFoundation.framework/SafariFoundation
       0x300000000 -        0x300443fff com.apple.MediaPlayer (1.0) <de3d702e-e6fc-3e24-a939-f20bafe5a81a> /Volumes/VOLUME/*/MediaPlayer.framework/MediaPlayer
       0x1671a0000 -        0x1671c3fff com.apple.AppProtectionUI (1.0) <589a2f7c-d2e0-32c4-911b-32c6847adfc8> /Volumes/VOLUME/*/AppProtectionUI.framework/AppProtectionUI
       0x174d58000 -        0x174d9bfff com.apple.ExtensionKit (97) <7b9fa404-1791-3042-8a7a-ab3b1bc069b9> /Volumes/VOLUME/*/ExtensionKit.framework/ExtensionKit
       0x16b1a4000 -        0x16b1e7fff com.apple.WebUI (1.0) <05b50fae-7c5b-3b7a-b663-b0954baaf871> /Volumes/VOLUME/*/WebUI.framework/WebUI
       0x17f420000 -        0x17f5d3fff com.apple.Safari.Core (8624) <88200411-d721-3770-91b1-a91c75cf05ca> /Volumes/VOLUME/*/SafariCore.framework/SafariCore
       0x15e2b0000 -        0x15e2b7fff libswiftMapKit.dylib (*) <19dbcee6-7802-3d8e-8091-a73808b58ac2> /Volumes/VOLUME/*/libswiftMapKit.dylib
       0x17c32c000 -        0x17c437fff com.apple.AuthKitUI (1.0) <43999bc5-0cf7-3a56-8366-945393138dfa> /Volumes/VOLUME/*/AuthKitUI.framework/AuthKitUI
       0x1707e0000 -        0x17081ffff com.apple.AppSSO (1.0) <fb1de6fc-dd63-33f0-a4a8-f18eb8972ca3> /Volumes/VOLUME/*/AppSSO.framework/AppSSO
       0x1671f8000 -        0x16721bfff com.apple.LocalAuthenticationPrivateUI (1.0) <5e44f6aa-8765-365a-8642-413dca092364> /Volumes/VOLUME/*/LocalAuthenticationPrivateUI.framework/LocalAuthenticationPrivateUI
       0x1726f8000 -        0x172733fff com.apple.LocalAuthenticationEmbeddedUI (1.0) <010c3221-521f-39c5-8b51-c163913fd53c> /Volumes/VOLUME/*/LocalAuthenticationEmbeddedUI.framework/LocalAuthenticationEmbeddedUI
       0x30092c000 -        0x300d1ffff com.apple.AppIntents (1.0) <6be06d5e-ff67-33e8-9fc4-c8cbfcdfe300> /Volumes/VOLUME/*/AppIntents.framework/AppIntents
       0x15e8d4000 -        0x15e8dbfff com.apple.RelevanceKit (1.0) <76db9b06-a39e-3ed4-8d5d-cc0f1ba39bbc> /Volumes/VOLUME/*/RelevanceKit.framework/RelevanceKit
       0x17f7d0000 -        0x17f953fff com.apple.LinkServices (1.0) <bebcdf81-4611-398c-aefa-c580863ad948> /Volumes/VOLUME/*/LinkServices.framework/LinkServices
       0x17bd24000 -        0x17bdeffff com.apple.ActivityKit (1.0) <fd3ac0c6-53d5-3735-88c7-e93eb236c4a9> /Volumes/VOLUME/*/ActivityKit.framework/ActivityKit
       0x160650000 -        0x16065ffff com.apple.appintents.AppIntentsTypeSupport (1.0) <80ebc048-3407-3850-932a-aea1cf6c8304> /Volumes/VOLUME/*/AppIntentsTypeSupport.framework/AppIntentsTypeSupport
       0x17c524000 -        0x17c58bfff com.apple.DoNotDisturb (1.0) <77df2e83-ee19-3a48-91db-890129837c69> /Volumes/VOLUME/*/DoNotDisturb.framework/DoNotDisturb
       0x17fadc000 -        0x17fc2bfff com.apple.LinkMetadata (1.0) <1e7f6bcc-fbac-37ce-ab7c-0645ea2da49f> /Volumes/VOLUME/*/LinkMetadata.framework/LinkMetadata
       0x169874000 -        0x169897fff com.apple.IntentsCore (1.0) <8e5b84a5-e6a1-3d72-9dbc-568205ab497b> /Volumes/VOLUME/*/IntentsCore.framework/IntentsCore
       0x150fa4000 -        0x150fa7fff com.apple.AvailabilityKit (1.0) <6aa56142-bb2f-3a6b-ada2-7047b280e799> /Volumes/VOLUME/*/AvailabilityKit.framework/AvailabilityKit
       0x1698d0000 -        0x1698f3fff com.apple.internal.SessionAssertion (1.0) <d11f7f5f-ec47-352a-9fdf-0199e6766dfe> /Volumes/VOLUME/*/SessionAssertion.framework/SessionAssertion
       0x17d9c4000 -        0x17da43fff com.apple.AppIntentSchemas (1.0) <24c2576c-4ef9-3691-8381-3b94e867173e> /Volumes/VOLUME/*/AppIntentSchemas.framework/AppIntentSchemas
       0x15167c000 -        0x151683fff com.apple.GeoToolbox (1.0) <a8c04f3c-4bf5-3b39-b15a-ce52d3225bc1> /Volumes/VOLUME/*/GeoToolbox.framework/GeoToolbox
       0x174c8c000 -        0x174cbffff com.apple.StatusKit (1.0) <284d03b4-bbcc-34d6-a541-72c4ae957744> /Volumes/VOLUME/*/StatusKit.framework/StatusKit
       0x1688cc000 -        0x1688d7fff com.apple.internal.SessionFoundation (1.0) <37dc19f8-4947-38da-9e02-5afbf84d0c65> /Volumes/VOLUME/*/SessionFoundation.framework/SessionFoundation
       0x3029e8000 -        0x302b7bfff com.apple.RemoteUI (1.0) <96595c15-b1ae-3059-92a8-8c48a3badf61> /Volumes/VOLUME/*/RemoteUI.framework/RemoteUI
       0x17fdac000 -        0x17fe17fff com.apple.LocalAuthenticationCoreUI (*) <74f2df25-6812-3cda-a35c-96f2e6ab425b> /Volumes/VOLUME/*/LocalAuthenticationCoreUI.framework/LocalAuthenticationCoreUI
       0x301084000 -        0x301183fff com.apple.SpringBoardUIServices (1.0) <3c945644-88cf-34a0-9eb9-901f4584fb1d> /Volumes/VOLUME/*/SpringBoardUIServices.framework/SpringBoardUIServices
       0x175064000 -        0x1750affff com.apple.BannerKit (1.0) <26c38b0f-993a-30aa-a990-8e9e20bcdca0> /Volumes/VOLUME/*/BannerKit.framework/BannerKit
       0x302d04000 -        0x302dcbfff com.apple.PaperBoardUI (1.0) <22d09bc2-09cc-3d7d-b97c-6eaf532136a1> /Volumes/VOLUME/*/PaperBoardUI.framework/PaperBoardUI
       0x174a34000 -        0x174a4ffff com.apple.MetalKit (173.7) <eb056492-7690-3852-89d6-7f33334d1bd1> /Volumes/VOLUME/*/MetalKit.framework/MetalKit
       0x17beb0000 -        0x17bedbfff com.apple.BaseBoardUI (732.1.1) <a8f79d83-36a2-3f57-9f65-bf615c58b09f> /Volumes/VOLUME/*/BaseBoardUI.framework/BaseBoardUI
       0x302ee8000 -        0x302fcffff com.apple.SpringBoardFoundation (1.0) <98ab4494-cd52-3b7d-abda-7a5794885feb> /Volumes/VOLUME/*/SpringBoardFoundation.framework/SpringBoardFoundation
       0x30130c000 -        0x3013abfff com.apple.icloud.SPOwner (1.0) <5ffb17a8-ebeb-3df1-84bb-b35f5934d8a2> /Volumes/VOLUME/*/SPOwner.framework/SPOwner
       0x17dbc0000 -        0x17dc2bfff com.apple.TelephonyUI (1.0) <732924f7-7506-3924-b38c-84073d457432> /Volumes/VOLUME/*/TelephonyUI.framework/TelephonyUI
       0x175120000 -        0x17513bfff com.apple.MaterialKit (1.0) <c20d745a-159d-397c-96b3-98d99ac2369b> /Volumes/VOLUME/*/MaterialKit.framework/MaterialKit
       0x15b500000 -        0x15b507fff com.apple.ProgressUI (1.0) <d2e23cf4-a6c3-3f05-ba98-62e18d9420ae> /Volumes/VOLUME/*/ProgressUI.framework/ProgressUI
       0x303684000 -        0x303927fff com.apple.eventkitui (1.0) <45100ae5-59f4-3576-95d0-05e9e186bf80> /Volumes/VOLUME/*/EventKitUI.framework/EventKitUI
       0x1688f0000 -        0x168903fff com.apple.PrototypeToolsUI (1.0) <b6ace50f-5c9c-33c4-bbed-8f3272be0ccb> /Volumes/VOLUME/*/PrototypeToolsUI.framework/PrototypeToolsUI
       0x303c2c000 -        0x303dfffff com.apple.StoreKit (1.0) <e52c2f43-330e-33f0-875d-3b000b041052> /Volumes/VOLUME/*/StoreKit.framework/StoreKit
       0x3031fc000 -        0x30326ffff com.apple.contacts.ContactsAutocomplete (1.0) <56866cee-afc7-30c4-95f0-a3dde488a1f8> /Volumes/VOLUME/*/ContactsAutocomplete.framework/ContactsAutocomplete
       0x303fc8000 -        0x3040cffff com.apple.calendar.CalendarLink (1.0) <32365ceb-ac40-34fc-a0ad-5e56ca65116f> /Volumes/VOLUME/*/CalendarLink.framework/CalendarLink
       0x3034c0000 -        0x303573fff com.apple.CalendarDaemon (1.0) <cd3ad051-fca8-3edf-8e21-7513b8cf8fd5> /Volumes/VOLUME/*/CalendarDaemon.framework/CalendarDaemon
       0x30489c000 -        0x304bb7fff com.apple.MapKit (1.0) <a5362efa-2aef-35d1-bdd6-a4179697c355> /Volumes/VOLUME/*/MapKit.framework/MapKit
       0x174e28000 -        0x174e43fff com.apple.MailServices (1.0) <5f73ec3e-2934-37a6-b84e-ea14989f840e> /Volumes/VOLUME/*/MailServices.framework/MailServices
       0x3043d0000 -        0x3044f3fff com.apple.CalendarDatabase (1.0) <c68379dd-fa43-30ff-8fbf-0dd6b6e28c51> /Volumes/VOLUME/*/CalendarDatabase.framework/CalendarDatabase
       0x3041bc000 -        0x304247fff com.apple.CalendarFoundation (8.0) <ddae69b7-eae9-3e5c-bb7d-7e66aa12f66b> /Volumes/VOLUME/*/CalendarFoundation.framework/CalendarFoundation
       0x305408000 -        0x30567bfff com.apple.CalendarUIKit (1.0) <3e66d505-efde-395d-ade8-10e23f847538> /Volumes/VOLUME/*/CalendarUIKit.framework/CalendarUIKit
       0x3058ac000 -        0x305a7ffff com.apple.eventkit (1.0.0) <fb93216f-ba89-3f83-9455-2ee1ded34138> /Volumes/VOLUME/*/EventKit.framework/EventKit
       0x169b6c000 -        0x169b7bfff com.apple.appstore.foundation (1.0) <0cbecb85-aefc-399d-9c51-19294791db39> /Volumes/VOLUME/*/AppStoreFoundation.framework/AppStoreFoundation
       0x1749e8000 -        0x1749f7fff com.apple.AppStoreOverlays (1.0) <d8edb2b8-6f4a-3c52-95a8-15210caaa70d> /Volumes/VOLUME/*/AppStoreOverlays.framework/AppStoreOverlays
       0x17dcb4000 -        0x17dd1ffff com.apple.mobileasset.BackgroundAssets (1.0) <eb00415f-57e2-3ee6-b9e2-36272243b1d0> /Volumes/VOLUME/*/BackgroundAssets.framework/BackgroundAssets
       0x305c88000 -        0x305e6ffff com.apple.storeservices (*) <90f45235-53d5-3244-8b57-047d192a4273> /Volumes/VOLUME/*/StoreServices.framework/StoreServices
       0x17dad0000 -        0x17daebfff libswiftAppleArchive.dylib (*) <a69c5ff1-a36e-3d97-8417-825745c3d6a0> /Volumes/VOLUME/*/libswiftAppleArchive.dylib
       0x14e3e8000 -        0x14e3ebfff libBASupport.dylib (*) <ff9548ef-e645-3a52-82c7-9cb25bbe36c0> /Volumes/VOLUME/*/libBASupport.dylib
       0x13c528000 -        0x13c52bfff libswiftExtensionFoundation.dylib (*) <f3ab7fc6-0aa0-3107-95ca-b8a58c216c9c> /Volumes/VOLUME/*/libswiftExtensionFoundation.dylib
       0x3045e4000 -        0x3046effff com.apple.backgroundassets.managed.helper (1.0) <96922552-4c64-33af-8854-5ebd3d723aef> /Volumes/VOLUME/*/ManagedBackgroundAssetsHelper.framework/ManagedBackgroundAssetsHelper
       0x175170000 -        0x17518bfff com.apple.backgroundassets.managed (1.0) <51c5576d-1e41-320f-82cf-0e0cd041e96a> /Volumes/VOLUME/*/ManagedBackgroundAssets.framework/ManagedBackgroundAssets
       0x170868000 -        0x170873fff com.apple.backgroundassets.managed.helper.fetching (1.0) <95a2e562-00a4-3a2b-8462-1c5ca92025a0> /Volumes/VOLUME/*/ManagedBackgroundAssetsHelperFetching.framework/ManagedBackgroundAssetsHelperFetching
       0x17e168000 -        0x17e197fff com.apple.backgroundassets.managed.xpc (1.0) <7b716694-48c2-3873-b675-76b507e834c6> /Volumes/VOLUME/*/ManagedBackgroundAssetsXPC.framework/ManagedBackgroundAssetsXPC
       0x17e1c4000 -        0x17e1dffff com.apple.SpaceAttributionFramework (1.0) <465f4863-0dc0-37ab-bf17-c592358266f1> /Volumes/VOLUME/*/SpaceAttribution.framework/SpaceAttribution
       0x17e210000 -        0x17e237fff com.apple.NetAppsUtilities (1.0) <2923054d-f68a-324f-ab0d-6dc0d2034fc2> /Volumes/VOLUME/*/NetAppsUtilities.framework/NetAppsUtilities
       0x17db40000 -        0x17db57fff com.apple.settingsandcoreapps.SettingsFoundation (1.0) <22084116-fd97-35b9-9968-178a0d26557e> /Volumes/VOLUME/*/SettingsFoundation.framework/SettingsFoundation
       0x174a80000 -        0x174a8ffff com.apple.-IconServices-SwiftUI (1.0) <f22cc8d9-b57f-3275-8da2-07b98fff761e> /Volumes/VOLUME/*/_IconServices_SwiftUI.framework/_IconServices_SwiftUI
       0x15e8f8000 -        0x15e8fffff com.apple.AppTrackingTransparency (1.0) <a259e571-9b2a-3f38-b14d-ce81da29d19e> /Volumes/VOLUME/*/AppTrackingTransparency.framework/AppTrackingTransparency
       0x166740000 -        0x166747fff com.apple.-AppIntentsServices.-AppIntents (1.0) <fcb51ef0-7f5a-3c57-9f1f-f3b8334256b5> /Volumes/VOLUME/*/_AppIntentsServices_AppIntents.framework/_AppIntentsServices_AppIntents
       0x3060c0000 -        0x3062b3fff com.apple.AppIntentsServices (1.0) <0600901c-34d1-36f3-85d6-e0c70a32561f> /Volumes/VOLUME/*/AppIntentsServices.framework/AppIntentsServices
       0x1751ac000 -        0x1751c3fff com.apple.corerecents (1.0) <1ec66be7-1e3f-3d68-94ed-e5a283e751bd> /Volumes/VOLUME/*/CoreRecents.framework/CoreRecents
       0x174d18000 -        0x174d23fff com.apple.-GeoToolbox-AppIntents (1.0) <42389eaf-b340-3f86-855e-0cf8449b8146> /Volumes/VOLUME/*/_GeoToolbox_AppIntents.framework/_GeoToolbox_AppIntents
       0x301490000 -        0x3014b7fff com.apple.-AppIntents-UIKit (1.0) <6573d7f2-3125-311a-9fdf-f38e9de5d00d> /Volumes/VOLUME/*/_AppIntents_UIKit.framework/_AppIntents_UIKit
       0x304f7c000 -        0x305043fff com.apple.SwiftUI-MapKit-Additions (1.0) <4566f5ea-927e-3c60-84b3-7ea9987ccbca> /Volumes/VOLUME/*/_MapKit_SwiftUI.framework/_MapKit_SwiftUI
       0x3067c8000 -        0x3069e7fff com.apple.widgetkit (*) <7ec82c68-32cb-34d2-892d-26e33bf74184> /Volumes/VOLUME/*/WidgetKit.framework/WidgetKit
       0x303320000 -        0x303383fff com.apple.dataaccess.framework (1.0) <f5e50348-d9e3-32b7-9057-95682de2d2a2> /Volumes/VOLUME/*/DataAccess.framework/DataAccess
       0x306b8c000 -        0x306d23fff com.apple.AccessibilityUtilities (1.0.0) <e268fbc9-74ec-3f30-be41-3b3fc4d75a45> /Volumes/VOLUME/*/AccessibilityUtilities.framework/AccessibilityUtilities
       0x305224000 -        0x3052affff com.apple.CoreRoutine (1.0) <b3f2f471-9dac-3f9f-9e4e-a33ca3eef6c5> /Volumes/VOLUME/*/CoreRoutine.framework/CoreRoutine
       0x3065c8000 -        0x30668ffff com.apple.GeoAnalytics (1.0) <cd2796c2-db65-3df1-9d34-1d920b902612> /Volumes/VOLUME/*/GeoAnalytics.framework/GeoAnalytics
       0x3072dc000 -        0x3074c7fff com.apple.Navigation (1.0) <4ba99dad-5ec3-38d8-976d-fad2e2126b0b> /Volumes/VOLUME/*/Navigation.framework/Navigation
       0x3092f8000 -        0x30a087fff com.apple.VectorKit (1.0) <34c6a942-c386-3dca-a1b1-a31bef80beb4> /Volumes/VOLUME/*/VectorKit.framework/VectorKit
       0x3030dc000 -        0x303123fff com.apple.VirtualGarage (1.0) <c3eb1b86-2f16-31b1-b6ac-3dd62ee72d46> /Volumes/VOLUME/*/VirtualGarage.framework/VirtualGarage
       0x306430000 -        0x3064affff com.apple.CarKit (1.0) <04e9747b-85f6-34d3-9f66-382e4e4c06fe> /Volumes/VOLUME/*/CarKit.framework/CarKit
       0x175db4000 -        0x175dbffff com.apple.CarPlayDisplayUtils (1.0) <cb591f9f-72b4-35fb-8139-33b656cfda8e> /Volumes/VOLUME/*/CarPlayDisplayUtils.framework/CarPlayDisplayUtils
       0x14fb9c000 -        0x14fb9ffff com.apple.-GeoServices-GeoToolbox (1.0) <5b5d1e2c-4b31-322f-9e30-b33f52da59c2> /Volumes/VOLUME/*/_GeoServices_GeoToolbox.framework/_GeoServices_GeoToolbox
       0x3076d0000 -        0x3077fbfff com.apple.chronoservices (*) <9897f37e-a0f2-3db8-b66c-55d4b7343ede> /Volumes/VOLUME/*/ChronoServices.framework/ChronoServices
       0x3070ac000 -        0x3071cffff com.apple.private.ReplicatorServices (1.0) <9004a739-5147-357e-9511-8c4a9e7b8956> /Volumes/VOLUME/*/ReplicatorServices.framework/ReplicatorServices
       0x307b74000 -        0x307cf7fff com.apple.private.ReplicatorEngine (1.0) <79d9a00d-fdd1-3e03-a072-236de4aa5e39> /Volumes/VOLUME/*/ReplicatorEngine.framework/ReplicatorEngine
       0x17bf1c000 -        0x17bf2ffff com.apple.framework.ctcategories (1.0) <971ce950-ae0a-3c98-97ea-b3d614a1d925> /Volumes/VOLUME/*/Categories.framework/Categories
       0x175dd4000 -        0x175ddffff com.apple.IDSSimulatorSupport (1.0) <42ce171c-725b-3a44-9121-fdc281b04f59> /Volumes/VOLUME/*/IDSSimulatorSupport.framework/IDSSimulatorSupport
       0x304300000 -        0x30431ffff com.apple.internal.LocalStatusKit (1.0) <6f588cbd-33de-33ca-aaef-a88b43faa945> /Volumes/VOLUME/*/LocalStatusKit.framework/LocalStatusKit
       0x17ffb0000 -        0x17ffc7fff com.apple.contextkit.ContextKit (1.0) <c9f20b87-2952-3504-ac3c-7c71ee4707bb> /Volumes/VOLUME/*/ContextKit.framework/ContextKit
       0x16067c000 -        0x160683fff com.apple.contextkit.ContextKitCore (1.0) <49515a16-d493-3442-992e-b7fdfd2b0014> /Volumes/VOLUME/*/ContextKitCore.framework/ContextKitCore
       0x3080f4000 -        0x3082b7fff com.apple.SensitiveContentAnalysisUI (1.0) <80b5e003-802e-3565-b6cd-2304e4d88f16> /Volumes/VOLUME/*/SensitiveContentAnalysisUI.framework/SensitiveContentAnalysisUI
       0x3033fc000 -        0x303417fff com.apple.contacts.donation (1.0) <72c4ae29-51be-3e72-b29c-d8e0fc229555> /Volumes/VOLUME/*/ContactsDonation.framework/ContactsDonation
       0x307934000 -        0x307a37fff com.apple.findmy.framework.FindMyLocate (1.0) <e5190d53-83e2-354e-b400-c5128daff0ab> /Volumes/VOLUME/*/FindMyLocate.framework/FindMyLocate
       0x30316c000 -        0x30318ffff com.apple.MonogramPoster (1.0) <bc58f0f9-e38b-3e72-9d60-607103e3f439> /Volumes/VOLUME/*/MonogramPoster.framework/MonogramPoster
       0x304794000 -        0x3047bffff com.apple.AppSupportUI (1.0) <b17ae4e6-d12c-32db-9993-631ad5f1f188> /Volumes/VOLUME/*/AppSupportUI.framework/AppSupportUI
       0x17ff6c000 -        0x17ff7bfff com.apple.PersonaUI (1.0) <116a37d3-52dd-3461-a4f7-d05a2bf1c278> /Volumes/VOLUME/*/PersonaUI.framework/PersonaUI
       0x3031ac000 -        0x3031bbfff com.apple.siri.AIMLExperimentationAnalytics (1.0) <81033f0d-fe6e-3a1f-bffc-a39b9b87de1e> /Volumes/VOLUME/*/AIMLExperimentationAnalytics.framework/AIMLExperimentationAnalytics
       0x308b14000 -        0x308e93fff com.apple.Contacts.ContactsUICore (1.0) <63c72013-7a1f-32ae-af81-1569d82c2275> /Volumes/VOLUME/*/ContactsUICore.framework/ContactsUICore
       0x306eec000 -        0x306f4bfff com.apple.TemplateKit (1.0) <0eb2e415-c57c-3135-a29b-1d6fbe82aada> /Volumes/VOLUME/*/TemplateKit.framework/TemplateKit
       0x3047f8000 -        0x304827fff com.apple.-AppIntents-SwiftUI (1.0) <5f563f80-ad16-389f-be6e-d0b5845c77bc> /Volumes/VOLUME/*/_AppIntents_SwiftUI.framework/_AppIntents_SwiftUI
       0x307dc4000 -        0x307e7ffff com.apple.CommunicationTrust (*) <2853bc75-6b12-31ff-825f-214e1b7af8fa> /Volumes/VOLUME/*/CommunicationTrust.framework/CommunicationTrust
       0x160698000 -        0x16069ffff com.apple.SwiftUI.AVKit.Additions (1.0) <efa52227-f890-3d10-8685-7a70c82d165f> /Volumes/VOLUME/*/_AVKit_SwiftUI.framework/_AVKit_SwiftUI
       0x3031d8000 -        0x3031e3fff com.apple.CallsPersistence (1.0) <7aefd000-7cd4-35cf-bd47-6ebca321b7f7> /Volumes/VOLUME/*/CallsPersistence.framework/CallsPersistence
       0x3086d0000 -        0x30880ffff com.apple.PeopleSuggester (1.0) <34fb7194-e6d4-3691-bd3f-57414af3a0b3> /Volumes/VOLUME/*/PeopleSuggester.framework/PeopleSuggester
       0x30344c000 -        0x303463fff com.apple.findmy.framework.FindMyCommon (1.0) <a0dbfe74-7a90-35e8-bc02-4d7fff442cbe> /Volumes/VOLUME/*/FindMyCommon.framework/FindMyCommon
       0x307ee0000 -        0x307f7bfff com.apple.findmy.framework.FindMyBase (1.0) <08c522f9-e835-3134-b6c6-553ce4c934d2> /Volumes/VOLUME/*/FindMyBase.framework/FindMyBase
       0x303480000 -        0x30348ffff com.apple.PersonaKit (1.0) <07024484-a302-302e-89db-718dc7578eff> /Volumes/VOLUME/*/PersonaKit.framework/PersonaKit
       0x307fec000 -        0x308053fff com.apple.Transparency (1.0) <38e5280d-ea83-31ba-8a99-f68a5fd0359d> /Volumes/VOLUME/*/Transparency.framework/Transparency
       0x305130000 -        0x30514ffff com.apple.CoreTransparency (1.0) <34eaa21f-34d5-309c-aa57-5974c29a9f19> /Volumes/VOLUME/*/CoreTransparency.framework/CoreTransparency
       0x305360000 -        0x30537ffff com.apple.IntentsUI (1.0) <5931f8c9-ccdc-30f4-b60e-6e8933f9be99> /Volumes/VOLUME/*/IntentsUI.framework/IntentsUI
       0x308554000 -        0x3085cffff com.apple.coredav (1.0.1) <c341f5cb-6180-3a58-9857-5b3083fbf27b> /Volumes/VOLUME/*/CoreDAV.framework/CoreDAV
       0x308440000 -        0x30849bfff com.apple.CalDAV (8.0) <62825063-0cb9-3e25-88a4-616675d2fb29> /Volumes/VOLUME/*/CalDAV.framework/CalDAV
       0x308964000 -        0x3089b3fff com.apple.MIME (2.0) <9493f05e-9d0a-3b12-b4cf-b5d7e159998b> /Volumes/VOLUME/*/MIME.framework/MIME
       0x306564000 -        0x306587fff com.apple.Notes (2.13) <c0e8ce80-34be-3f0f-84e7-270184d3f5cd> /Volumes/VOLUME/*/Notes.framework/Notes
       0x303660000 -        0x30366bfff com.apple.EmailAddressing (11.0) <9d31c389-d2a0-3cd6-b012-9e6fc95c6c19> /Volumes/VOLUME/*/EmailAddressing.framework/EmailAddressing
       0x30b090000 -        0x30b113fff com.apple.EmailCore (11.0) <c4212440-7dd8-3022-ab80-792f61b7da0a> /Volumes/VOLUME/*/EmailCore.framework/EmailCore
       0x30b474000 -        0x30b5bbfff com.apple.Email (11.0) <999be00a-ce85-3912-bfb2-862985aadf10> /Volumes/VOLUME/*/Email.framework/Email
       0x30b738000 -        0x30b7cffff com.apple.EmailFoundation (11.0) <39c46db7-df1f-3dee-9d0c-dab933ad9253> /Volumes/VOLUME/*/EmailFoundation.framework/EmailFoundation
       0x151660000 -        0x151663fff com.apple.MessageSupport (1.0) <bafa01bb-dd4f-3bdd-a085-49ff2de3fd59> /Volumes/VOLUME/*/MessageSupport.framework/MessageSupport
       0x30b1b4000 -        0x30b22ffff com.apple.NotesSupport (2.13) <41f28535-5b8f-3e4e-afe7-61ffc0933842> /Volumes/VOLUME/*/NotesSupport.framework/NotesSupport
       0x308a14000 -        0x308a67fff com.apple.Synapse (1.0) <1eaf4ea9-2547-316d-a741-30bb323f647f> /Volumes/VOLUME/*/Synapse.framework/Synapse
       0x30befc000 -        0x30c0effff com.apple.Speech (1.0) <1c7c2aa0-03c7-3874-98ea-4ba01a0c8245> /Volumes/VOLUME/*/Speech.framework/Speech
       0x306fc0000 -        0x307023fff com.apple.AlgorithmsInternal (1.2) <ce2d35e4-2b5c-3b83-b799-b180b94d1846> /Volumes/VOLUME/*/AlgorithmsInternal.framework/AlgorithmsInternal
       0x3050e8000 -        0x3050fbfff com.apple.SpotlightReceiver (1.0) <7759263b-1b35-3ff5-b127-f742cd5386c4> /Volumes/VOLUME/*/SpotlightReceiver.framework/SpotlightReceiver
       0x304868000 -        0x304873fff com.apple.ClarityFoundation (*) <1a41c4c6-185e-3f79-a45c-d931735e9f13> /Volumes/VOLUME/*/ClarityFoundation.framework/ClarityFoundation
       0x307ae8000 -        0x307b2bfff com.apple.accessibility.BrailleTranslation (1.0) <1caf1e85-c0cc-3ee8-b3b7-e6a892e5e367> /Volumes/VOLUME/*/BrailleTranslation.framework/BrailleTranslation
       0x30b89c000 -        0x30b95bfff com.apple.AccessibilitySharedSupport (1.0) <9ed770ff-3376-381d-9fb8-7860489a8af8> /Volumes/VOLUME/*/AccessibilitySharedSupport.framework/AccessibilitySharedSupport
       0x30c56c000 -        0x30c7f3fff com.apple.texttospeech (1.0.0) <fc96ab3b-87e3-3f1a-ba92-21b9ce15fc57> /Volumes/VOLUME/*/TextToSpeech.framework/TextToSpeech
       0x30c91c000 -        0x30cbc3fff libmecabra.dylib (*) <1f53a9dc-d7b3-3614-8684-5902b3fcbb53> /Volumes/VOLUME/*/libmecabra.dylib
       0x169b94000 -        0x169b97fff com.apple.ConstantClasses (1.0) <60ce0423-e7b4-3646-a945-6dfb11d6ea8c> /Volumes/VOLUME/*/ConstantClasses.framework/ConstantClasses
       0x174a18000 -        0x174a1ffff libChineseTokenizer.dylib (*) <6f10ca30-1326-388d-8a00-677fb3fe1c96> /Volumes/VOLUME/*/libChineseTokenizer.dylib
       0x30ba40000 -        0x30baf3fff com.apple.GenerativeFunctions.Sage (1.0) <856e7618-0cbb-390c-841d-60a9f8f9d036> /Volumes/VOLUME/*/Sage.framework/Sage
       0x30ccac000 -        0x30cdebfff com.apple.TextComposer (1.0) <6cbf1113-c994-3bf4-95d8-10dd05d121e9> /Volumes/VOLUME/*/TextComposer.framework/TextComposer
       0x309210000 -        0x309257fff com.apple.internal.SwiftSQLite (1.0) <96c5d5b1-81f4-36b3-8856-32b7b7eea692> /Volumes/VOLUME/*/SwiftSQLite.framework/SwiftSQLite
       0x17dd74000 -        0x17dd7bfff com.apple.TipKitServices (26.5) <cbdbeb59-b6e3-38df-9e51-e37977420c7b> /Volumes/VOLUME/*/TipKitServices.framework/TipKitServices
       0x30cea4000 -        0x30cfd3fff com.apple.LiftUI (1.2) <ceabeb8a-8fd2-365d-8315-422c6f64527d> /Volumes/VOLUME/*/LiftUI.framework/LiftUI
       0x30b2cc000 -        0x30b363fff com.apple.Settings (224.4.3) <7d16500f-8076-3af5-9586-e9c5818972f9> /Volumes/VOLUME/*/Settings.framework/Settings
       0x30d5a0000 -        0x30d7cbfff com.apple.proactive.AppPredictionClient (1.0) <06bd5000-cb7b-3292-aaad-959ef3b3ade3> /Volumes/VOLUME/*/AppPredictionClient.framework/AppPredictionClient
       0x30517c000 -        0x30518bfff com.apple.CloudSettings (1.0) <e328aaa6-6e03-3806-be65-d75a4b00976c> /Volumes/VOLUME/*/CloudSettings.framework/CloudSettings
       0x30bb7c000 -        0x30bbbffff com.apple.helpkit (14.0) <a0f82e3c-78a4-35de-a545-c88262d230ab> /Volumes/VOLUME/*/HelpKit.framework/HelpKit
       0x30bd70000 -        0x30bdfbfff com.apple.Sleep (1.0) <85f5527e-ed86-3df0-85a9-8adeef9b2e23> /Volumes/VOLUME/*/Sleep.framework/Sleep
       0x30bc20000 -        0x30bc7bfff com.apple.ClipServices (1001) <76cc0f53-79f9-39c1-b42c-2391be25c531> /Volumes/VOLUME/*/ClipServices.framework/ClipServices
       0x3051a4000 -        0x3051b3fff com.apple.SpotlightFoundation (1.0) <6a5fe343-5a56-3963-b8e7-9674086d1135> /Volumes/VOLUME/*/SpotlightFoundation.framework/SpotlightFoundation
       0x306760000 -        0x30678bfff com.apple.ProactivePredictionClient (1.0) <1ddaeba0-b45f-34ec-b68d-4506fabb01d6> /Volumes/VOLUME/*/ProactivePredictionClient.framework/ProactivePredictionClient
       0x30d0c0000 -        0x30d10bfff com.apple.proactive.ContextualSuggestionClient (1.0) <86addbd0-d1c1-3421-aacb-7f562dcca7e3> /Volumes/VOLUME/*/ContextualSuggestionClient.framework/ContextualSuggestionClient
       0x30e658000 -        0x30ec1ffff com.apple.HealthKit (1.0) <029f903b-7a04-3142-9341-a97cde182022> /Volumes/VOLUME/*/HealthKit.framework/HealthKit
       0x30afec000 -        0x30b01bfff com.apple.proactive.AppPredictionFoundation (1.0) <1b61dbad-ecd7-3b17-b32b-3fc7ecac96c3> /Volumes/VOLUME/*/AppPredictionFoundation.framework/AppPredictionFoundation
       0x3051cc000 -        0x3051d7fff com.apple.proactive.HeroDataClient (1.0) <92ebf7ed-816a-3a19-bde6-a366b90e6a7d> /Volumes/VOLUME/*/HeroDataClient.framework/HeroDataClient
       0x30da80000 -        0x30dc17fff com.apple.VoiceShortcutClient (1.0) <dcb065b0-66d8-38e4-aa18-13dee1099b87> /Volumes/VOLUME/*/VoiceShortcutClient.framework/VoiceShortcutClient
       0x30d2b0000 -        0x30d347fff com.apple.proactive.ProactiveSuggestionClientModel (1.0) <0a671f01-a3d2-3721-9ea7-2c7b96666912> /Volumes/VOLUME/*/ProactiveSuggestionClientModel.framework/ProactiveSuggestionClientModel
       0x3051f0000 -        0x3051fffff com.apple.UserNotificationsSettings (1.0) <6c73c40e-076a-33b2-8e3e-97e2b8d8ce46> /Volumes/VOLUME/*/UserNotificationsSettings.framework/UserNotificationsSettings
       0x30d1ec000 -        0x30d227fff com.apple.proactive.ProactiveContextClient (1.0) <9cb7ba98-151f-3d1a-9a56-cfde2410189a> /Volumes/VOLUME/*/ProactiveContextClient.framework/ProactiveContextClient
       0x30b3e4000 -        0x30b41ffff com.apple.SleepHealth (1.0) <d588d9f7-6e79-3328-8c80-a260a845b90f> /Volumes/VOLUME/*/SleepHealth.framework/SleepHealth
       0x3053b8000 -        0x3053cffff com.apple.RegulatoryDomainFramework (1.0) <f8b9cce5-b6e2-3602-8a74-28c3ce8c3a45> /Volumes/VOLUME/*/RegulatoryDomain.framework/RegulatoryDomain
       0x30de34000 -        0x30decffff com.apple.BusinessChatService (1.0) <51a73721-bc00-3d22-ac59-dd59fe8bc00c> /Volumes/VOLUME/*/BusinessChatService.framework/BusinessChatService
       0x309288000 -        0x3092abfff com.apple.BusinessFoundation (1.0) <21ce62f5-5cb2-32db-a9ba-717a8c2aad04> /Volumes/VOLUME/*/BusinessFoundation.framework/BusinessFoundation
       0x30f9e0000 -        0x30fe03fff com.apple.ToolKit (*) <4987104e-bfed-3753-b637-df0ac179a553> /Volumes/VOLUME/*/ToolKit.framework/ToolKit
       0x30df88000 -        0x30e053fff com.apple.TipsUI (26.0) <35440796-0626-3946-91f9-efa55d471c32> /Volumes/VOLUME/*/TipsUI.framework/TipsUI
       0x30e2d8000 -        0x30e3a7fff com.apple.TipsCore (26.0) <1a04cc34-bb0e-3674-b7f7-d17303516958> /Volumes/VOLUME/*/TipsCore.framework/TipsCore
       0x307280000 -        0x30729bfff com.apple.cryptokit.Chirp (1.0) <fdceda3c-1b95-3fa1-b975-92837cce98bb> /Volumes/VOLUME/*/Chirp.framework/Chirp
       0x30d4c4000 -        0x30d523fff com.apple.RemoteManagement (1.0) <49959de1-c10d-3143-9c3c-d56051b53893> /Volumes/VOLUME/*/RemoteManagement.framework/RemoteManagement
       0x30e49c000 -        0x30e517fff com.apple.RemoteManagementModel (1.0) <adb63d1d-ebc0-3fc6-96a6-3c967d1e637a> /Volumes/VOLUME/*/RemoteManagementModel.framework/RemoteManagementModel
       0x30e118000 -        0x30e167fff com.apple.RemoteManagementStore (1.0) <95223579-33dd-31a2-af08-65361803b247> /Volumes/VOLUME/*/RemoteManagementStore.framework/RemoteManagementStore
       0x30706c000 -        0x307077fff com.apple.RemoteManagementProtocol (1.0) <5e22ca96-4308-3028-8af1-29b68329aa77> /Volumes/VOLUME/*/RemoteManagementProtocol.framework/RemoteManagementProtocol
       0x30f248000 -        0x30f293fff com.apple.WebBookmarksSwift (26.5) <c12bc891-c746-3fab-8579-7dd2d1ecbec5> /Volumes/VOLUME/*/WebBookmarksSwift.framework/WebBookmarksSwift
       0x310234000 -        0x3104f7fff com.apple.Safari.Shared (8624) <743deb6f-2fbf-37c6-b9f7-c7372953fa72> /Volumes/VOLUME/*/SafariShared.framework/SafariShared
       0x310838000 -        0x3109bbfff com.apple.GroupActivities (1) <661e4804-df94-3e69-aec4-00feb7520617> /Volumes/VOLUME/*/GroupActivities.framework/GroupActivities
       0x30af70000 -        0x30af9bfff com.apple.cloudkit.CloudKitCode (1.0) <7a93cd40-a914-379e-9f91-1c2e70b45d1f> /Volumes/VOLUME/*/CloudKitCode.framework/CloudKitCode
       0x3115c4000 -        0x311897fff com.apple.CopresenceCore (1) <376a16c3-1248-33e2-90c1-f6cd1af8dc67> /Volumes/VOLUME/*/CopresenceCore.framework/CopresenceCore
       0x30d154000 -        0x30d18bfff com.apple.UsageTracking (3.0) <52800a7b-5ef7-39e3-a3e9-0e19c7c0aaf7> /Volumes/VOLUME/*/UsageTracking.framework/UsageTracking
       0x30f568000 -        0x30f673fff com.apple.ScreenTimeCore (3.0) <2acb15e6-2799-3a94-b5b7-337d23a2f223> /Volumes/VOLUME/*/ScreenTimeCore.framework/ScreenTimeCore
       0x310fd4000 -        0x3111f7fff com.apple.framework.calculate (1.4) <9368cfa9-724f-3480-a95b-d7677565a27f> /Volumes/VOLUME/*/Calculate.framework/Calculate
       0x30f7a8000 -        0x30f823fff com.apple.Catalyst (1.0) <d8b388b1-f1c6-35fd-8448-1c9d66cd9274> /Volumes/VOLUME/*/Catalyst.framework/Catalyst
       0x311e7c000 -        0x311f7ffff com.apple.ConfigurationEngineModel (1.0) <933dd74e-8b90-3346-b210-608ef6f4edc7> /Volumes/VOLUME/*/ConfigurationEngineModel.framework/ConfigurationEngineModel
       0x30f32c000 -        0x30f3bbfff com.apple.DeviceActivity (3.0) <5a597be2-0b60-3a09-9dbc-31bdc62b0b7a> /Volumes/VOLUME/*/DeviceActivity.framework/DeviceActivity
       0x3128ac000 -        0x312d9bfff com.apple.JetEngine (1.0) <4d05c6e9-f517-3552-9755-40c5a7d2eb04> /Volumes/VOLUME/*/JetEngine.framework/JetEngine
       0x310d2c000 -        0x310dd3fff com.apple.JetUI (1.0) <c3076db1-2d27-321b-8758-8a656a18b97c> /Volumes/VOLUME/*/JetUI.framework/JetUI
       0x30bcf0000 -        0x30bd0bfff com.apple.JetPack (1.0) <8d4b39d5-f90c-3b44-aa3f-ffd985f1d9d8> /Volumes/VOLUME/*/JetPack.framework/JetPack
       0x310e6c000 -        0x310eeffff com.apple.itunesstore (*) <02c0de54-906e-391b-9c33-db6abf5e1817> /Volumes/VOLUME/*/iTunesStore.framework/iTunesStore
       0x312168000 -        0x3122b3fff com.apple.-JetEngine-SwiftUI (1.0) <d20c4f8b-8697-3c79-a789-bf514015d599> /Volumes/VOLUME/*/_JetEngine_SwiftUI.framework/_JetEngine_SwiftUI
       0x311280000 -        0x311337fff com.apple.ManagedSettings (267.122.1) <280cbb74-9c42-3aea-b5de-5df8db9c620a> /Volumes/VOLUME/*/ManagedSettings.framework/ManagedSettings
       0x3053e8000 -        0x3053f3fff com.apple.ManagedSettingsSupport (267.122.1) <1e6a85bc-92b5-3cb6-8fef-278bf23b7460> /Volumes/VOLUME/*/ManagedSettingsSupport.framework/ManagedSettingsSupport
       0x30e1c8000 -        0x30e1fffff com.apple.ScreenReaderCore (10) <75757fca-ecf7-31c7-9c24-d1ae173f7d69> /Volumes/VOLUME/*/ScreenReaderCore.framework/ScreenReaderCore
       0x30f40c000 -        0x30f463fff com.apple.StocksKit (1.0) <b0403b7b-41bf-3fd9-98bd-0e2e647440cf> /Volumes/VOLUME/*/StocksKit.framework/StocksKit
       0x151d7c000 -        0x151d7ffff com.apple.OAuth (25) <44bf821f-3236-345c-abb4-4676c7bfb7c1> /Volumes/VOLUME/*/OAuth.framework/OAuth
       0x313024000 -        0x3132b3fff com.apple.StocksCore (8.5) <bd44793e-a46c-36c1-a784-6bf70f1d4cc9> /Volumes/VOLUME/*/StocksCore.framework/StocksCore
       0x31348c000 -        0x31360bfff com.apple.TeaFoundation (3.0) <b3531f36-ec56-3da0-9e75-d393ed96d844> /Volumes/VOLUME/*/TeaFoundation.framework/TeaFoundation
       0x30d40c000 -        0x30d427fff com.apple.TeaSettings (3.0) <c00036a5-649d-3a9d-9956-59c692e41828> /Volumes/VOLUME/*/TeaSettings.framework/TeaSettings
       0x3142c4000 -        0x314837fff com.apple.newscore (11.5) <507b4fcc-916f-312d-8fdc-6eda636f6fcb> /Volumes/VOLUME/*/NewsCore.framework/NewsCore
       0x30f8cc000 -        0x30f91ffff com.apple.TeaDB (3.0) <bea96df8-b164-3919-8b7a-7ac9d6341f20> /Volumes/VOLUME/*/TeaDB.framework/TeaDB
       0x3113b8000 -        0x3113fffff com.apple.RemoteConfiguration (3.0) <d7edfe16-255a-3b4a-9035-ebb2920dfe9d> /Volumes/VOLUME/*/RemoteConfiguration.framework/RemoteConfiguration
       0x314e78000 -        0x3151bffff com.apple.newstransport (11.5) <7102fb87-768c-3d41-9057-9a8e25d5bd2b> /Volumes/VOLUME/*/NewsTransport.framework/NewsTransport
       0x308668000 -        0x308677fff com.apple.newsfoundation (11.5) <e1ce8506-a02f-380a-bf7a-999a15e2992a> /Volumes/VOLUME/*/NewsFoundation.framework/NewsFoundation
       0x3043a0000 -        0x3043a7fff com.apple.NewsURLBucket (1.0) <d5cece3e-6cb1-3ed6-aa82-eb876c5989fa> /Volumes/VOLUME/*/NewsURLBucket.framework/NewsURLBucket
       0x313c88000 -        0x3140bffff com.apple.CoreHandwriting (161) <d75b0cb3-d171-3109-9aa3-c9e770a112f5> /Volumes/VOLUME/*/CoreHandwriting.framework/CoreHandwriting
       0x15b494000 -        0x15b497fff libswiftMetalKit.dylib (*) <885d54a1-11a0-3053-8e2b-5797b709e6a4> /Volumes/VOLUME/*/libswiftMetalKit.dylib
       0x3123b4000 -        0x31248bfff com.apple.ProofReader (2.4) <7f2d47f5-003f-3e81-80e6-1f59cc0f448d> /Volumes/VOLUME/*/ProofReader.framework/ProofReader
       0x3166c8000 -        0x31729ffff com.apple.Message (2.0) <c0fe9384-8945-3069-b643-115c7a28c55d> /Volumes/VOLUME/*/Message.framework/Message
       0x30e254000 -        0x30e273fff com.apple.VisionKit (1.0) <b097efd7-ea26-3d2a-b990-64ede5ebe1fb> /Volumes/VOLUME/*/VisionKit.framework/VisionKit
       0x3194cc000 -        0x31a2bbfff com.apple.chatkit (5.0) <7e6dd1f4-4b89-319a-bded-e245287b8963> /Volumes/VOLUME/*/ChatKit.framework/ChatKit
       0x311464000 -        0x311497fff com.apple.MailSupport (11.0) <cfe97841-83b0-3698-bd30-e9615189622d> /Volumes/VOLUME/*/MailSupport.framework/MailSupport
       0x315bb4000 -        0x315f2ffff com.apple.EmailDaemon (1.0) <3414cff8-4bbc-3eee-a5f4-82fad90527fd> /Volumes/VOLUME/*/EmailDaemon.framework/EmailDaemon
       0x30f4b0000 -        0x30f4e3fff com.apple.SearchIntrospectionKit (1.0) <b0dd9f3c-d030-3e74-bfb8-6c90d3227058> /Volumes/VOLUME/*/SearchIntrospectionKit.framework/SearchIntrospectionKit
       0x312518000 -        0x31257bfff com.apple.SettingsHost (1.0) <2d91281c-19af-346f-a60b-b2a9b27b8e40> /Volumes/VOLUME/*/SettingsHost.framework/SettingsHost
       0x30f96c000 -        0x30f993fff com.apple.MailKit (1.0) <c6804ab9-bddd-353d-a5d1-e7c655f8298b> /Volumes/VOLUME/*/MailKit.framework/MailKit
       0x313724000 -        0x313807fff com.apple.DocumentCamera (1.0) <6e3f7327-d4d1-3e48-856a-32079a78c8e3> /Volumes/VOLUME/*/DocumentCamera.framework/DocumentCamera
       0x313908000 -        0x313a53fff com.apple.VisionKitCore (1.0) <37df7dd2-315a-3d0f-8e0f-2a3712c95bb3> /Volumes/VOLUME/*/VisionKitCore.framework/VisionKitCore
       0x3126ac000 -        0x312713fff com.apple.CameraEditKit (1.0) <749eab5f-e2c8-3c90-b9a0-c14408456fe2> /Volumes/VOLUME/*/CameraEditKit.framework/CameraEditKit
       0x31279c000 -        0x312807fff com.apple.PosterBoardServices (1.0) <6aeb8e9d-8b73-3ba3-87ab-f281d4b5cadf> /Volumes/VOLUME/*/PosterBoardServices.framework/PosterBoardServices
       0x3114f4000 -        0x31151ffff com.apple.PosterLegibilityKit (1.0) <e58d690c-73b8-3629-8fe2-f533c4653385> /Volumes/VOLUME/*/PosterLegibilityKit.framework/PosterLegibilityKit
       0x3125bc000 -        0x3125e7fff com.apple.AddressBook (1.0) <6d0bba6b-9e52-3dfa-be70-39db508e26c2> /Volumes/VOLUME/*/AddressBook.framework/AddressBook
       0x3158d0000 -        0x315953fff com.apple.siri.SiriActivation (1.0) <6c763095-cea6-3083-9137-4eb85450816a> /Volumes/VOLUME/*/SiriActivation.framework/SiriActivation
       0x30e5fc000 -        0x30e61bfff com.apple.BubbleKit (1.0) <511fcb45-1ab7-337d-8722-f7225b97e8ef> /Volumes/VOLUME/*/BubbleKit.framework/BubbleKit
       0x317d1c000 -        0x317e07fff com.apple.SocialLayer (1.0) <ce155417-e085-3ae8-be6f-6d524455bded> /Volumes/VOLUME/*/SocialLayer.framework/SocialLayer
       0x31552c000 -        0x315577fff com.apple.SharedWithYou (1.0) <a8f40acb-658a-333f-a0a0-b3b92369dc07> /Volumes/VOLUME/*/SharedWithYou.framework/SharedWithYou
       0x3155d4000 -        0x31561ffff com.apple.CloudSharingUI (1.0) <ae39d20f-d922-3508-a734-eaf2f6651b70> /Volumes/VOLUME/*/CloudSharingUI.framework/CloudSharingUI
       0x316240000 -        0x3162c3fff com.apple.CoreSuggestionsUI (1.0) <cfe09fed-cf40-380a-b147-038852289159> /Volumes/VOLUME/*/CoreSuggestionsUI.framework/CoreSuggestionsUI
       0x311564000 -        0x311593fff com.apple.CloudSharing (1.0) <ab7e1490-5618-3a0d-b5c8-855de2894e72> /Volumes/VOLUME/*/CloudSharing.framework/CloudSharing
       0x316374000 -        0x3163e3fff com.apple.VoiceMemos.framework (1.0) <b5ec3e0f-5882-3b02-93c6-364037d4f10d> /Volumes/VOLUME/*/VoiceMemos.framework/VoiceMemos
       0x30f524000 -        0x30f53bfff com.apple.MessagesSupport (1.0) <288e3278-115f-3286-9715-5c76e56c7faa> /Volumes/VOLUME/*/MessagesSupport.framework/MessagesSupport
       0x31e07c000 -        0x31f903fff com.apple.PhotosUICore (1.0) <9d902ff2-88a4-3bca-87cc-c2fe0cb619f9> /Volumes/VOLUME/*/PhotosUICore.framework/PhotosUICore
       0x317fb8000 -        0x3180bbfff com.apple.ResponseKit (1.0) <856f51ca-9641-33be-9b0c-664ed98688ae> /Volumes/VOLUME/*/ResponseKit.framework/ResponseKit
       0x308528000 -        0x30852ffff com.apple.TranslationUIServices (1.0) <03e0bcba-c8f7-317b-a5a5-fae7538a98f0> /Volumes/VOLUME/*/TranslationUIServices.framework/TranslationUIServices
       0x318414000 -        0x31853ffff com.apple.quicklook (1.0) <687131d3-b876-3ad8-8680-25ba663d75fc> /Volumes/VOLUME/*/QuickLook.framework/QuickLook
       0x316470000 -        0x3164f7fff com.apple.CarPlay (1.0) <9c945715-dc3b-3a73-bb7e-ba5dbcd35076> /Volumes/VOLUME/*/CarPlay.framework/CarPlay
       0x310f8c000 -        0x310fa3fff com.apple.EmojiKit (1.0) <05b5793d-a5be-34db-9d21-9e59a85c5661> /Volumes/VOLUME/*/EmojiKit.framework/EmojiKit
       0x308adc000 -        0x308aebfff com.apple.imtranscoding (10.0) <d45d5764-2987-3970-93a0-3ef852fccff7> /Volumes/VOLUME/*/IMTranscoding.framework/IMTranscoding
       0x30bd38000 -        0x30bd4ffff com.apple.messages.IMSharedUI (1.0) <d400393c-7d50-39eb-ad6c-c7bbca169497> /Volumes/VOLUME/*/IMSharedUI.framework/IMSharedUI
       0x30bec0000 -        0x30becffff com.apple.StorageSettingsFramework (1.0) <8440903a-4692-387a-9c3f-b15da6ec843d> /Volumes/VOLUME/*/StorageSettings.framework/StorageSettings
       0x31c2cc000 -        0x31cadbfff com.apple.PhotosUIPrivate (1.0) <bf827170-23c5-3873-96ca-3dfe35fb3fe6> /Volumes/VOLUME/*/PhotosUIPrivate.framework/PhotosUIPrivate
       0x318c70000 -        0x319027fff com.apple.imsharedutilities (10.0) <4fb1e462-74ae-325e-9c61-eae04efcf72b> /Volumes/VOLUME/*/IMSharedUtilities.framework/IMSharedUtilities
       0x31b11c000 -        0x31b41ffff com.apple.IMDPersistence (10.0) <d9210c12-806f-3022-b73b-5f4976c29704> /Volumes/VOLUME/*/IMDPersistence.framework/IMDPersistence
       0x31b588000 -        0x31b943fff com.apple.imcore (10.0) <fc5e0a0d-49c4-3705-a754-29bae08e78bb> /Volumes/VOLUME/*/IMCore.framework/IMCore
       0x318194000 -        0x318237fff com.apple.SafetyMonitor (1.0) <77f4f37c-f46a-3686-ad95-3223024c9d46> /Volumes/VOLUME/*/SafetyMonitor.framework/SafetyMonitor
       0x31bb20000 -        0x31bbf3fff com.apple.CommunicationDetails (1.0) <de31428a-bbda-3207-b0a9-649f983f17cd> /Volumes/VOLUME/*/CommunicationDetails.framework/CommunicationDetails
       0x3159fc000 -        0x315a43fff com.apple.PhotosPlayer (1.0) <38423bf1-9ae3-3b6e-b764-dbb842a404ce> /Volumes/VOLUME/*/PhotosPlayer.framework/PhotosPlayer
       0x318818000 -        0x3188dffff com.apple.ImagePlayground (1.0) <2902442e-2582-3adc-8e0c-88b8cba5cf17> /Volumes/VOLUME/*/ImagePlayground.framework/ImagePlayground
       0x315ab8000 -        0x315afffff com.apple.PhotosUI (1.0) <58c7518c-f4c8-3a2a-b2ca-16ffb0f3e684> /Volumes/VOLUME/*/PhotosUI.framework/PhotosUI
       0x312628000 -        0x312647fff com.apple.SharedWithYouCore (1.0) <c74da4f1-5ce3-303d-887a-ca6d462dc6b5> /Volumes/VOLUME/*/SharedWithYouCore.framework/SharedWithYouCore
       0x3072bc000 -        0x3072c3fff com.apple.LinkPresentation.-LinkPresentation-AppIntents (296) <c6e4de90-63f4-3519-aa6c-6741ee193944> /Volumes/VOLUME/*/_LinkPresentation_AppIntents.framework/_LinkPresentation_AppIntents
       0x308698000 -        0x30869ffff com.apple.-QuickLook-SwiftUI (1.0) <b6608213-f0c9-33f0-9042-8951b708bccb> /Volumes/VOLUME/*/_QuickLook_SwiftUI.framework/_QuickLook_SwiftUI
       0x31d9c0000 -        0x31dcb3fff com.apple.AppleAccountUI (1.0) <771a9d2b-d25f-3de7-a275-d08a641135bf> /Volumes/VOLUME/*/AppleAccountUI.framework/AppleAccountUI
       0x30d484000 -        0x30d497fff com.apple.BusinessServicesUI (1.0) <e58931bd-21d3-385f-a8bb-320cb148ad3b> /Volumes/VOLUME/*/BusinessServicesUI.framework/BusinessServicesUI
       0x319280000 -        0x31939bfff com.apple.Feedback (1.0) <9fbf3b20-abb6-3bae-8bdd-0b6f4f82e403> /Volumes/VOLUME/*/Feedback.framework/Feedback
       0x318694000 -        0x318733fff com.apple.FeedbackService (1.0) <08d6b794-ea65-3975-bdc9-c0bef9e313d5> /Volumes/VOLUME/*/FeedbackService.framework/FeedbackService
       0x321998000 -        0x321ee7fff com.apple.ImagePlaygroundInternal (1.0) <88c3ba10-f5f9-38ad-bb35-9c5110f41d87> /Volumes/VOLUME/*/ImagePlaygroundInternal.framework/ImagePlaygroundInternal
       0x3182d4000 -        0x318347fff com.apple.proactive.ProactiveSummarizationClient (1.0) <81c9c30f-9c84-3678-ad16-318079944b97> /Volumes/VOLUME/*/ProactiveSummarizationClient.framework/ProactiveSummarizationClient
       0x318ad8000 -        0x318b8ffff com.apple.TextUnderstanding.TextUnderstanding (1.0) <c0a1f132-9100-35ad-aa5b-784af5b7a338> /Volumes/VOLUME/*/TextUnderstanding.framework/TextUnderstanding
       0x15b8d8000 -        0x15b8dbfff libswiftCarPlay.dylib (*) <01f18406-b681-3bab-a505-8739abe608cf> /Volumes/VOLUME/*/libswiftCarPlay.dylib
       0x3141ec000 -        0x31420bfff com.apple.PosterFuturesKit (1.0) <46605148-5b97-3bc4-821a-f1faa4323993> /Volumes/VOLUME/*/PosterFuturesKit.framework/PosterFuturesKit
       0x3189c0000 -        0x318a37fff com.apple.PosterFoundation (1.0) <d3242790-f739-3f9b-bb93-e111dbcd7208> /Volumes/VOLUME/*/PosterFoundation.framework/PosterFoundation
       0x313c34000 -        0x313c4bfff com.apple.LightSourceSupport (*) <dbdd93a7-4713-39fb-a1e0-bf0f46c49dd4> /Volumes/VOLUME/*/LightSourceSupport.framework/LightSourceSupport
       0x17dba4000 -        0x17dba7fff com.apple.corebrightness (1.0) <fd50e1fc-5fb8-3085-a209-c12af13fb097> /Volumes/VOLUME/*/CoreBrightness.framework/CoreBrightness
       0x31663c000 -        0x31665ffff com.apple.DiagnosticExtensions (1.0) <b156dfcb-a721-392a-a2c1-22bbe1b8c7a2> /Volumes/VOLUME/*/DiagnosticExtensions.framework/DiagnosticExtensions
       0x318c14000 -        0x318c3bfff com.apple.Accessory-Transport-Extension (3.0) <0a4c6cce-9026-3bd5-9bf5-13a8c0c07152> /Volumes/VOLUME/*/AccessoryTransportExtension.framework/AccessoryTransportExtension
       0x31bff0000 -        0x31c01bfff com.apple.AccessorySetupKit (1.0) <791ad8be-25cb-3767-b189-40001960d9d6> /Volumes/VOLUME/*/AccessorySetupKit.framework/AccessorySetupKit
       0x31defc000 -        0x31df6ffff com.apple.DeviceAccess (3.0) <77151949-0e4d-3c93-963a-2b3760a0169a> /Volumes/VOLUME/*/DeviceAccess.framework/DeviceAccess
       0x3222e8000 -        0x322383fff com.apple.MessageProtection (2.0) <f64d4af9-2a19-32bc-a317-74a62e507127> /Volumes/VOLUME/*/MessageProtection.framework/MessageProtection
       0x319470000 -        0x31948bfff com.apple.AACCore (1.0) <71ffc101-c5b5-3500-9251-ec4b130cf2b3> /Volumes/VOLUME/*/AACCore.framework/AACCore
       0x30d284000 -        0x30d28bfff com.apple.PhotosMediaFoundation (1.0) <9f0577f6-eda6-31ec-a065-3eea48dc87a6> /Volumes/VOLUME/*/PhotosMediaFoundation.framework/PhotosMediaFoundation
       0x31d570000 -        0x31d59ffff com.apple.HomeSharing (1.0) <6b3f8fac-9315-3336-9166-764cd3d64ebd> /Volumes/VOLUME/*/HomeSharing.framework/HomeSharing
       0x3224ac000 -        0x322557fff com.apple.bulletinboard (1.0) <6f794d9b-4066-3b24-b3f0-8ad82a6fb572> /Volumes/VOLUME/*/BulletinBoard.framework/BulletinBoard
       0x322854000 -        0x32294ffff com.apple.corespeech.CoreSpeechFoundation (1.0) <9432c9c6-ed44-3343-b0cc-2954ae8ded50> /Volumes/VOLUME/*/CoreSpeechFoundation.framework/CoreSpeechFoundation
       0x314270000 -        0x314287fff com.apple.siri.SiriActivationFoundation (1.0) <ad7aa239-5d8c-31f1-8a50-857a39bd64d6> /Volumes/VOLUME/*/SiriActivationFoundation.framework/SiriActivationFoundation
       0x31d74c000 -        0x31d767fff com.apple.siri.SiriObservation (1.0) <b039e548-6192-3710-8102-a008d4e8a6ca> /Volumes/VOLUME/*/SiriObservation.framework/SiriObservation
       0x31d89c000 -        0x31d8c7fff com.apple.crossdevicearbitration.sirideviceselection (1.0) <32ad1550-6b3a-3f8e-9dd5-fd046c2d8fd8> /Volumes/VOLUME/*/SiriDeviceSelection.framework/SiriDeviceSelection
       0x3156d0000 -        0x3156dbfff com.apple.internal.UserAlerts (1.0) <41428400-482d-3647-bb36-f810b705f383> /Volumes/VOLUME/*/UserAlerts.framework/UserAlerts
       0x323a24000 -        0x323b0ffff com.apple.siri.SiriNetwork (1.0) <b5eb2c7f-6afa-33fd-a718-7409d6cc744b> /Volumes/VOLUME/*/SiriNetwork.framework/SiriNetwork
       0x322a84000 -        0x322aeffff com.apple.siri.SiriUtilities (1.0) <127636cd-eaf7-30c9-8c99-9b168308778e> /Volumes/VOLUME/*/SiriUtilities.framework/SiriUtilities
       0x322624000 -        0x3226affff com.apple.crossdevicearbitration.coredeviceselection (1.0) <bade8507-21a4-30d9-ae69-516587eecb9e> /Volumes/VOLUME/*/CoreDeviceSelection.framework/CoreDeviceSelection
       0x324160000 -        0x32440bfff com.apple.intelligenceflow.IntelligenceFlow (1.0) <b4b5d6b3-e022-34a8-93bd-6628ab62e4e9> /Volumes/VOLUME/*/IntelligenceFlow.framework/IntelligenceFlow
       0x322730000 -        0x3227a7fff com.apple.intelligenceflow.IntelligenceFlowShared (1.0) <08ad6ab6-6b18-32d5-a042-b262533b4c05> /Volumes/VOLUME/*/IntelligenceFlowShared.framework/IntelligenceFlowShared
       0x323d20000 -        0x323e73fff com.apple.siri.SiriMessageTypes (1.0) <1e29562f-ac56-3f7d-b383-0d1f14d72b83> /Volumes/VOLUME/*/SiriMessageTypes.framework/SiriMessageTypes
       0x324b00000 -        0x324daffff com.apple.siri.SnippetKit (1.0) <10a6cd74-59d2-3e37-ab82-9c377c055f8b> /Volumes/VOLUME/*/SnippetKit.framework/SnippetKit
       0x316694000 -        0x31669ffff com.apple.siri.SiriKitInvocation (1.0) <dbbb7d21-5ecc-3014-826c-d3334c508e28> /Volumes/VOLUME/*/SiriKitInvocation.framework/SiriKitInvocation
       0x3257e4000 -        0x325c23fff com.apple.siri.SiriNLUTypes (3520.38.1) <ce845c2a-2378-30cf-b760-c1ca1bea386d> /Volumes/VOLUME/*/SiriNLUTypes.framework/SiriNLUTypes
       0x326058000 -        0x3260e3fff com.apple.pommes.SiriInformationTypes (1.0) <6370c380-425b-3270-ab6d-e9470b7cdf2a> /Volumes/VOLUME/*/SiriInformationTypes.framework/SiriInformationTypes
       0x327324000 -        0x32780bfff com.apple.siri.SiriOntology (3520.4.1) <e411bba0-4149-3753-be43-f90919f08de3> /Volumes/VOLUME/*/SiriOntology.framework/SiriOntology
       0x323730000 -        0x323817fff com.apple.siri.SiriOntologyProtobuf (3520.4.1) <5b307638-0ee5-369d-8818-63153e429d54> /Volumes/VOLUME/*/SiriOntologyProtobuf.framework/SiriOntologyProtobuf
       0x323898000 -        0x32391ffff com.apple.proactive.PersonalizationPortrait (1.0) <be50e337-e026-39b0-9f95-e2d6b8d933df> /Volumes/VOLUME/*/PersonalizationPortrait.framework/PersonalizationPortrait
       0x3183d4000 -        0x3183ebfff com.apple.proactive.PersonalIntelligenceCore (1.0) <923808c2-6355-3fb7-a4e1-ccb6732ea529> /Volumes/VOLUME/*/PersonalIntelligenceCore.framework/PersonalIntelligenceCore
       0x327e88000 -        0x32852bfff com.apple.FinanceKit (1.0) <1e649142-fea6-325b-aca2-0c3b288cb8aa> /Volumes/VOLUME/*/FinanceKit.framework/FinanceKit
       0x30afd0000 -        0x30afd7fff com.apple.ReminderKitUI (*) <1847a93c-0b51-3bc1-87dc-d54a931d9fb3> /Volumes/VOLUME/*/ReminderKitUI.framework/ReminderKitUI
       0x324fc4000 -        0x325187fff com.apple.reminderkit (1.0) <11de9c24-b072-3f7d-a233-86aea2ae1017> /Volumes/VOLUME/*/ReminderKit.framework/ReminderKit
       0x30d580000 -        0x30d58bfff com.apple.TextUnderstanding.TextUnderstandingFoundation (1.0) <67e89dda-0b6d-30ac-84b6-373743d94c5c> /Volumes/VOLUME/*/TextUnderstandingFoundation.framework/TextUnderstandingFoundation
       0x3187d8000 -        0x3187ebfff com.apple.DocumentUnderstandingClient (122.21) <53da4cbe-25d5-3794-9bb2-9d045c973783> /Volumes/VOLUME/*/DocumentUnderstandingClient.framework/DocumentUnderstandingClient
       0x324860000 -        0x32499bfff com.apple.AppAnalytics (2.0) <e3b73adf-a60d-3a91-a3a6-22218cd4e90e> /Volumes/VOLUME/*/AppAnalytics.framework/AppAnalytics
       0x31d794000 -        0x31d7c7fff libtidy.A.dylib (*) <3ab80a44-e511-3292-9b5f-025847ba220a> /Volumes/VOLUME/*/libtidy.A.dylib
       0x3034a8000 -        0x3034abfff com.apple.UserSafety (1.0) <c08f1b50-9b66-3eff-91a7-c28495e25071> /Volumes/VOLUME/*/UserSafety.framework/UserSafety
       0x324020000 -        0x32409bfff com.apple.Translation (1.0) <d299c2fe-55ed-371b-9c83-c0b41bd9b6d6> /Volumes/VOLUME/*/Translation.framework/Translation
       0x31d960000 -        0x31d98ffff com.apple.BusinessServices (1.0) <273a9162-e252-3ce6-8e84-76c87a593b3a> /Volumes/VOLUME/*/BusinessServices.framework/BusinessServices
       0x321810000 -        0x32185bfff com.apple.CTLazuliSupport (*) <4096b3e1-93a5-3789-99d0-ede30becfafb> /Volumes/VOLUME/*/CTLazuliSupport.framework/CTLazuliSupport
       0x321898000 -        0x3218cbfff com.apple.CTBlastDoorSupport (*) <3541896d-1479-3ae0-850b-37d272c74df1> /Volumes/VOLUME/*/CTBlastDoorSupport.framework/CTBlastDoorSupport
       0x3267f4000 -        0x326aa7fff com.apple.SwiftMLS (1.0) <f28a74df-ad9f-3433-a05e-6ff091f39390> /Volumes/VOLUME/*/SwiftMLS.framework/SwiftMLS
       0x326bac000 -        0x326cf3fff com.apple.PhotosUIFoundation (1.0) <02fb1365-5221-3928-a813-f05567382249> /Volumes/VOLUME/*/PhotosUIFoundation.framework/PhotosUIFoundation
       0x326eb4000 -        0x327003fff com.apple.Tungsten (1.0) <de5a356b-fcd9-3220-a8ed-52bca337814a> /Volumes/VOLUME/*/Tungsten.framework/Tungsten
       0x3255b0000 -        0x325683fff com.apple.GridZero (1.0) <8cdf906f-d118-390b-958a-b5af7bc674e0> /Volumes/VOLUME/*/GridZero.framework/GridZero
       0x31288c000 -        0x312893fff com.apple.-Photos-AppIntents (1.0) <43c25e29-9d78-3f3a-ba2d-c2b056705507> /Volumes/VOLUME/*/_Photos_AppIntents.framework/_Photos_AppIntents
       0x31d900000 -        0x31d923fff com.apple.-PhotosUI-SwiftUI (1.0) <d156f5e4-7a67-39da-9602-f25e1ee10d74> /Volumes/VOLUME/*/_PhotosUI_SwiftUI.framework/_PhotosUI_SwiftUI
       0x321900000 -        0x32192ffff com.apple.PhotosSpatialMedia (1.0) <1eaafb17-bca7-3f7a-a59c-98e2c6a71ed4> /Volumes/VOLUME/*/PhotosSpatialMedia.framework/PhotosSpatialMedia
       0x322c44000 -        0x322c6ffff com.apple.photo.NeutrinoKit (1.0) <842fa3a6-28c1-335e-bbc4-6f905d6d1ffb> /Volumes/VOLUME/*/NeutrinoKit.framework/NeutrinoKit
       0x3253b0000 -        0x325443fff com.apple.PhotosUIEdit (1.0) <9636239e-4c17-3753-a60c-b9bc2e2d56ea> /Volumes/VOLUME/*/PhotosUIEdit.framework/PhotosUIEdit
       0x328c88000 -        0x328d93fff com.apple.portrait.Portrait (1.0) <e0e587fb-daa1-3a2f-9db6-3ced33b0b7ba> /Volumes/VOLUME/*/Portrait.framework/Portrait
       0x329460000 -        0x329737fff com.apple.PhotosSwiftUICore (1.0) <a3dc418f-dfd2-3a61-b2cf-7e7b6d1c4863> /Volumes/VOLUME/*/PhotosSwiftUICore.framework/PhotosSwiftUICore
       0x3271b0000 -        0x327217fff com.apple.sociald.Social (87) <10d60711-6eaf-36bb-acbc-7a5a4a82d4f8> /Volumes/VOLUME/*/Social.framework/Social
       0x32474c000 -        0x3247d3fff com.apple.Cosmo (1.0) <ad344202-67d0-307a-ad14-205dc68b9085> /Volumes/VOLUME/*/Cosmo.framework/Cosmo
       0x31dff0000 -        0x31e013fff com.apple.PreferencesExtended (1.0) <92c0a16c-a3c8-373b-be91-b5f4d3c2f0a1> /Volumes/VOLUME/*/PreferencesExtended.framework/PreferencesExtended
       0x32ad74000 -        0x32bc33fff com.apple.vfx (16.0) <12c66fef-d503-3446-a7a8-af613a631987> /Volumes/VOLUME/*/VFX.framework/VFX
       0x32a1fc000 -        0x32a67ffff com.apple.SceneKit (1.0) <f36299e9-d73b-35d9-a604-ff34e05ea2a9> /Volumes/VOLUME/*/SceneKit.framework/SceneKit
       0x3086b4000 -        0x3086bbfff com.apple.hsaauthenticationserver (8.0) <312b0407-5728-3f5a-b5ea-5b3ec190e780> /Volumes/VOLUME/*/HSAAuthentication.framework/HSAAuthentication
       0x31c278000 -        0x31c293fff com.apple.FlightUtilitiesCore (1.0) <fb8d842d-7966-3ae1-897c-ce1b8ad1b1d8> /Volumes/VOLUME/*/FlightUtilitiesCore.framework/FlightUtilitiesCore
       0x324a5c000 -        0x324a97fff com.apple.ScreenTimeUI (3.0) <edceb18f-c17f-32bb-b28b-d7ecc8003c3a> /Volumes/VOLUME/*/ScreenTimeUI.framework/ScreenTimeUI
       0x32550c000 -        0x325547fff com.apple.QuickLookUICore (1.0) <ebe52db3-76de-358d-805e-59e7d5d39889> /Volumes/VOLUME/*/QuickLookUICore.framework/QuickLookUICore
       0x324674000 -        0x324697fff com.apple.quicklook.QuickLookSupport (1.0) <1a9da1b7-fd65-3adb-a0c4-a709d28ea05c> /Volumes/VOLUME/*/QuickLookSupport.framework/QuickLookSupport
       0x3292bc000 -        0x32936bfff com.apple.MarketplaceKit (1.0) <d38e91f7-3859-3936-953b-2897347c06f3> /Volumes/VOLUME/*/MarketplaceKit.framework/MarketplaceKit
       0x329b9c000 -        0x329c43fff com.apple.UIAccessibility (1.0.0) <ad2ea310-4ba2-34c8-944d-64050793e99e> /Volumes/VOLUME/*/UIAccessibility.framework/UIAccessibility
       0x31e03c000 -        0x31e04ffff com.apple.CoreSDB (10.0) <43ae95a1-8044-3632-93b0-603faf0bd24e> /Volumes/VOLUME/*/CoreSDB.framework/CoreSDB
       0x313c10000 -        0x313c17fff com.apple.idskvstore (10.0) <721875a0-3322-3031-a9a8-e4da96a1734d> /Volumes/VOLUME/*/IDSKVStore.framework/IDSKVStore
       0x32916c000 -        0x3291ebfff com.apple.AskToCore (1.0) <e6364b78-267d-3f98-a290-c9bb31476354> /Volumes/VOLUME/*/AskToCore.framework/AskToCore
       0x329a18000 -        0x329a77fff com.apple.CoreCDP (1.0) <b653c849-abe6-3fde-9fa1-364cbf6e149c> /Volumes/VOLUME/*/CoreCDP.framework/CoreCDP
       0x13dce0000 -        0x13dce3fff com.apple.DefaultAppsSettings (14.4.1) <6df82124-c4b3-3cdc-a359-c5a50869994b> /Volumes/VOLUME/*/DefaultAppsSettings.framework/DefaultAppsSettings
       0x329d20000 -        0x329d9bfff com.apple.ManagedAppDistribution (1.0) <b808e010-a4d7-386f-ad1d-34431af769fb> /Volumes/VOLUME/*/ManagedAppDistribution.framework/ManagedAppDistribution
       0x329f78000 -        0x32a003fff com.apple.accessibility.AccessibilityUIUtilities (1.0) <b6a4f723-8ed4-3a2e-b6f5-14e2c002ae6d> /Volumes/VOLUME/*/AccessibilityUIUtilities.framework/AccessibilityUIUtilities
       0x32ab48000 -        0x32abebfff com.apple.ScreenReaderOutput (10) <8a640573-6459-35b5-879b-594bce72d74f> /Volumes/VOLUME/*/ScreenReaderOutput.framework/ScreenReaderOutput
       0x329e28000 -        0x329e73fff com.apple.accessibility.VoiceOverServices (1.0) <7cf35350-0d60-3724-be33-3f32f7c0b82d> /Volumes/VOLUME/*/VoiceOverServices.framework/VoiceOverServices
       0x329af0000 -        0x329b23fff com.apple.ProxCardKit (2094.60.51) <6174c3ca-1b08-3fcd-b2c0-d5274438b264> /Volumes/VOLUME/*/ProxCardKit.framework/ProxCardKit
       0x13de6c000 -        0x13de6ffff com.apple.accessibility.LiveTranscription (1.0) <0da00084-d6c3-3b55-b97e-3a5c95df041c> /Volumes/VOLUME/*/LiveTranscription.framework/LiveTranscription
       0x32a0cc000 -        0x32a147fff com.apple.ProductKit (*) <80f8e8fd-68d0-3dba-82fc-1c7e7cd986a2> /Volumes/VOLUME/*/ProductKit.framework/ProductKit
       0x32c158000 -        0x32c1b7fff com.apple.PhotoLibrary (1.0) <8d6b79c8-efd2-3b9e-8e72-29a3aac83739> /Volumes/VOLUME/*/PhotoLibrary.framework/PhotoLibrary
       0x32c248000 -        0x32c307fff com.apple.ProductKitCore (*) <341626c5-ad69-38d2-9c9b-9eecc33b8086> /Volumes/VOLUME/*/ProductKitCore.framework/ProductKitCore
       0x32a9e4000 -        0x32aa23fff com.apple.CarPlayUIServices (1.0) <6fd058e9-ede5-3530-9f59-107c2ba56753> /Volumes/VOLUME/*/CarPlayUIServices.framework/CarPlayUIServices
       0x328f98000 -        0x328fbffff com.apple.StorageDataFramework (1.0) <97e488ca-976d-306a-9a2d-c41a3a3d888f> /Volumes/VOLUME/*/StorageData.framework/StorageData
       0x32c47c000 -        0x32c4e3fff com.apple.NanoLifestyle.Fitness (1.0) <140f7cdc-448f-35f0-a032-73bf9ed5325c> /Volumes/VOLUME/*/Fitness.framework/Fitness
       0x32c674000 -        0x32c6effff com.apple.HealthDaemonFoundation (1.0) <e9763eb5-dcfa-3731-b71d-013006755093> /Volumes/VOLUME/*/HealthDaemonFoundation.framework/HealthDaemonFoundation
       0x32eec8000 -        0x32f8affff com.apple.HealthDaemon (1.0) <18950039-85dd-3598-803d-645e898b30ec> /Volumes/VOLUME/*/HealthDaemon.framework/HealthDaemon
       0x32c8b4000 -        0x32c96bfff com.apple.HealthOrchestration (1.0) <05793dbf-0de2-35cc-b645-99e6342cabe8> /Volumes/VOLUME/*/HealthOrchestration.framework/HealthOrchestration
       0x328f30000 -        0x328f4bfff com.apple.PairedSync (1.0) <4989e6c1-7216-3e8b-ada3-69a88d571475> /Volumes/VOLUME/*/PairedSync.framework/PairedSync
       0x3212d8000 -        0x3212e3fff com.apple.health.HealthKitOrchestrationAdditions (*) <672cb7d3-e2a4-326b-8d07-e8f7841290d1> /Volumes/VOLUME/*/HealthKitOrchestrationAdditions.framework/HealthKitOrchestrationAdditions
       0x32c784000 -        0x32c813fff com.apple.CommunicationsUICore (1.0) <d440a0bd-e1c7-3c46-8ae4-304c72c9136f> /Volumes/VOLUME/*/CommunicationsUICore.framework/CommunicationsUICore
       0x32cb10000 -        0x32cbb7fff com.apple.CallIntelligence (*) <80281115-b5ea-3899-b029-3e1ad4a3b1a7> /Volumes/VOLUME/*/CallIntelligence.framework/CallIntelligence
       0x322810000 -        0x32281bfff com.apple.calls.FaceTimeFeatureControl (*) <968e021f-4953-381d-b5a8-f2fcf3ae76b4> /Volumes/VOLUME/*/FaceTimeFeatureControl.framework/FaceTimeFeatureControl
       0x32daa4000 -        0x32dbe3fff com.apple.calls.FaceTimeMessageStore (1.0) <aab29ee2-330a-39d0-98fa-3a593eaf15c9> /Volumes/VOLUME/*/FaceTimeMessageStore.framework/FaceTimeMessageStore
       0x329ef8000 -        0x329f1ffff com.apple.visualvoicemail (36) <3465ba8d-68fe-3bcc-9ce5-d7f7da5b3798> /Volumes/VOLUME/*/VisualVoicemail.framework/VisualVoicemail
       0x32acb0000 -        0x32acebfff com.apple.SpotlightResources (1.0) <6185be72-428f-3882-afb5-f6cac826a425> /Volumes/VOLUME/*/SpotlightResources.framework/SpotlightResources
       0x32c390000 -        0x32c3cbfff com.apple.DataDeliveryServices (1.0) <0e343d8d-6c3e-39d6-8cf9-1ec439283846> /Volumes/VOLUME/*/DataDeliveryServices.framework/DataDeliveryServices
       0x329254000 -        0x32927bfff com.apple.metadata.SpotlightLinguistics (1.0) <9587cea0-82c0-3e88-aaef-73bbb25f012d> /Volumes/VOLUME/*/SpotlightLinguistics.framework/SpotlightLinguistics
       0x32dce8000 -        0x32dd8bfff com.apple.avatarkit (1.0) <858e7fe7-2d39-3ebf-8914-5a6632e846e3> /Volumes/VOLUME/*/AvatarKit.framework/AvatarKit
       0x32c568000 -        0x32c5affff com.apple.AvatarPersistence (1.0) <9dd25ed5-e70e-39cc-89bb-f299040e0179> /Volumes/VOLUME/*/AvatarPersistence.framework/AvatarPersistence
       0x32e3e4000 -        0x32e6bbfff com.apple.findmy.FindMyUICore (1.0) <15927854-ee8d-3660-a4af-a363341aa67f> /Volumes/VOLUME/*/FindMyUICore.framework/FindMyUICore
       0x32c9f0000 -        0x32ca43fff com.apple.accountsui (1.0) <3502d572-f7df-3800-954d-d1e6ca30dc87> /Volumes/VOLUME/*/AccountsUI.framework/AccountsUI
       0x32e0dc000 -        0x32e18bfff com.apple.CoreCDPUI (1.0) <34f7b314-7599-3fed-ab3d-aa8eb03007a6> /Volumes/VOLUME/*/CoreCDPUI.framework/CoreCDPUI
       0x32df58000 -        0x32dfa7fff com.apple.messages.Messages (1.0) <6464fc3e-a5f3-3c49-b7ad-03b815980a50> /Volumes/VOLUME/*/Messages.framework/Messages
       0x32e264000 -        0x32e2e7fff com.apple.findmy.FindMyCore (1.0) <e856a4fb-6393-392a-b23e-d2155a709056> /Volumes/VOLUME/*/FindMyCore.framework/FindMyCore
       0x32cc40000 -        0x32cca7fff com.apple.findmy.framework.FindMyMessaging (1.0) <691ba747-d2da-324f-9c8b-2de28a23e468> /Volumes/VOLUME/*/FindMyMessaging.framework/FindMyMessaging
       0x322cac000 -        0x322cb7fff com.apple.icloud.FindMyDeviceUI (1.0) <731beba7-562d-3a44-b356-5e73715dec63> /Volumes/VOLUME/*/FindMyDeviceUI.framework/FindMyDeviceUI
       0x32ca8c000 -        0x32cab3fff com.apple.icloud.FMCore (1.0) <e662ce91-eea5-3725-8481-520fba941c31> /Volumes/VOLUME/*/FMCore.framework/FMCore
       0x32ea3c000 -        0x32eb0ffff com.apple.CoreCDPInternal (1.0) <3b1d607a-5b81-3220-ac9b-0d7865a5a0b0> /Volumes/VOLUME/*/CoreCDPInternal.framework/CoreCDPInternal
       0x32ebf4000 -        0x32ec9bfff com.apple.accounts.AccountsDaemon (113) <8450bc1d-fe94-39ed-a5a7-168d3f7dc30a> /Volumes/VOLUME/*/AccountsDaemon.framework/AccountsDaemon
       0x32aa90000 -        0x32aaabfff com.apple.CertInfo (1.0) <a5d62361-81d4-3066-ae67-fd6890490903> /Volumes/VOLUME/*/CertInfo.framework/CertInfo
       0x3308cc000 -        0x330bcffff com.apple.MapsUI (1.0) <b9afcfac-8e1b-3219-b19b-006dd211cbde> /Volumes/VOLUME/*/MapsUI.framework/MapsUI
       0x330ec4000 -        0x331067fff com.apple.MapsDesign (1.0) <c940fbbf-79df-3ad2-bd5a-dd58ff217282> /Volumes/VOLUME/*/MapsDesign.framework/MapsDesign
       0x3302f0000 -        0x3303f3fff com.apple.ap.AdPlatformsCommon (1.0) <9f9da856-606a-34ac-90ba-1b253989059a> /Volumes/VOLUME/*/AdPlatformsCommon.framework/AdPlatformsCommon
       0x331200000 -        0x33139ffff com.apple.ap.PromotedContentUI (1.0) <054f7e9e-fced-3177-a32d-41d139c7707e> /Volumes/VOLUME/*/PromotedContentUI.framework/PromotedContentUI
       0x32ed3c000 -        0x32edf3fff com.apple.ap.APFoundation (1.0) <feb7cebb-5e5d-3d56-ba93-288f38b09b4e> /Volumes/VOLUME/*/APFoundation.framework/APFoundation
       0x32aadc000 -        0x32aafffff com.apple.ap.APConfigurationSystem (1.0) <07210335-b51e-338c-8145-bf938c9175a8> /Volumes/VOLUME/*/APConfigurationSystem.framework/APConfigurationSystem
       0x32c41c000 -        0x32c43ffff com.apple.ap.SearchAds (1.0) <5684c9a1-3131-3289-a2b9-c8f3bb0b4eeb> /Volumes/VOLUME/*/SearchAds.framework/SearchAds
       0x1668e8000 -        0x1668ebfff com.apple.ap.AdPlatformsCommonUI (1.0) <fdd122bf-a3c5-39a4-b1e9-b5f088066942> /Volumes/VOLUME/*/AdPlatformsCommonUI.framework/AdPlatformsCommonUI
       0x315b88000 -        0x315b8ffff com.apple.ap.PromotedContentSupport (1.0) <67719777-9c51-37c3-9dab-3a2b7a0b8a8d> /Volumes/VOLUME/*/PromotedContentSupport.framework/PromotedContentSupport
       0x3304bc000 -        0x3305bffff com.apple.ap.PromotedContent (1.0) <1b1c83df-e604-30fd-8d1e-875826cd170b> /Volumes/VOLUME/*/PromotedContent.framework/PromotedContent
       0x3239e0000 -        0x3239effff com.apple.TransparencyDetailsView (1.0) <45447148-2abf-3691-b49e-34b68384ab29> /Volumes/VOLUME/*/TransparencyDetailsView.framework/TransparencyDetailsView
       0x324718000 -        0x324727fff com.apple.ap.Proxy (1.0) <3dc04011-ad12-3ae5-a9fd-d88f0906f592> /Volumes/VOLUME/*/PromotedContentProxy.framework/PromotedContentProxy
       0x32482c000 -        0x32483ffff com.apple.AdAttributionKit (1.0) <774ee7e9-f8d0-3952-947b-caaeeb790d26> /Volumes/VOLUME/*/AdAttributionKit.framework/AdAttributionKit
       0x169920000 -        0x169923fff com.apple.-AdAttributionKit-StoreKit (1.0) <d3f57685-27f3-3e1e-9a0c-4dafd23a495c> /Volumes/VOLUME/*/_AdAttributionKit_StoreKit.framework/_AdAttributionKit_StoreKit
       0x32e018000 -        0x32e05ffff com.apple.AdPlatforms.AdCore (1.0) <40002551-8783-3c8a-9172-f9fa15f98db9> /Volumes/VOLUME/*/AdCore.framework/AdCore
       0x32e360000 -        0x32e3a7fff com.apple.ap.PromotedContentPrediction (1.0) <e02502b4-165a-3116-adff-012a2305f671> /Volumes/VOLUME/*/PromotedContentPrediction.framework/PromotedContentPrediction
       0x322834000 -        0x32283bfff com.apple.ap.LimitAdTracking (1.0) <735ef1bf-6af1-3e64-9fe4-5a54d43d8f23> /Volumes/VOLUME/*/LimitAdTracking.framework/LimitAdTracking
       0x3317a8000 -        0x331947fff com.apple.FeedbackCore (1.0) <47a6f443-b47c-31d2-a480-49e5ce6007a0> /Volumes/VOLUME/*/FeedbackCore.framework/FeedbackCore
       0x330668000 -        0x330713fff com.apple.DiagnosticExtensionsDaemon (1.0) <6d367a66-d82f-398c-9419-537d581733a9> /Volumes/VOLUME/*/DiagnosticExtensionsDaemon.framework/DiagnosticExtensionsDaemon
       0x328b28000 -        0x328b3bfff com.apple.EnhancedLoggingState (1.0) <bd1123d1-1d13-340c-85ad-aa6ace02ae37> /Volumes/VOLUME/*/EnhancedLoggingState.framework/EnhancedLoggingState
       0x32e884000 -        0x32e8cbfff com.apple.MultipeerConnectivity (179.600.1) <5f10c304-13ea-39d7-b863-b1ae91dc2217> /Volumes/VOLUME/*/MultipeerConnectivity.framework/MultipeerConnectivity
       0x3322d4000 -        0x3326c3fff com.apple.HomeKit (1.0) <44769be4-de36-3b7f-949b-dcbeb3c7f5f8> /Volumes/VOLUME/*/HomeKit.framework/HomeKit
       0x331ad4000 -        0x331bebfff com.apple.HomeKitClips (1.0) <7feb9785-2103-30aa-8529-bfd9db60a3f0> /Volumes/VOLUME/*/HomeKitClips.framework/HomeKitClips
       0x32c618000 -        0x32c637fff com.apple.AirPlayRoutePrediction (1.0) <8f409466-7ad1-360e-801f-abef8e4809a6> /Volumes/VOLUME/*/AirPlayRoutePrediction.framework/AirPlayRoutePrediction
       0x3315fc000 -        0x3316abfff com.apple.HMFoundation (1.0) <2f6e3ce6-c237-32d4-935d-a5dd44a03607> /Volumes/VOLUME/*/HMFoundation.framework/HMFoundation
       0x32cd3c000 -        0x32cd5ffff com.apple.HomeKitEventRouter (1.0) <945653c8-1ec5-32b2-aeaf-d238b06e4a92> /Volumes/VOLUME/*/HomeKitEventRouter.framework/HomeKitEventRouter
       0x13f628000 -        0x13f62bfff com.apple.home.HomeKitFeatures (1.0) <568e4a92-6e62-347a-bfd4-81f849186e71> /Volumes/VOLUME/*/HomeKitFeatures.framework/HomeKitFeatures
       0x333848000 -        0x334203fff com.apple.matter (1.4.0.74) <497f5254-a37f-3822-a097-2c6d1bcd6f0d> /Volumes/VOLUME/*/Matter.framework/Matter
       0x32e9a8000 -        0x32e9e3fff com.apple.TouchRemote (1.0) <708817de-2fce-3dc0-8105-316938189bff> /Volumes/VOLUME/*/TouchRemote.framework/TouchRemote
       0x3257b0000 -        0x3257c3fff libdns_services.dylib (*) <af01eaa9-e04d-396d-9457-243b6b6877a8> /Volumes/VOLUME/*/libdns_services.dylib
       0x331c74000 -        0x331d1ffff com.apple.AirPlaySupport (2.0) <cdae010d-b3ec-3cc6-9c9f-00f78d93b08f> /Volumes/VOLUME/*/AirPlaySupport.framework/AirPlaySupport
       0x30e2c0000 -        0x30e2c7fff com.apple.AppleSRP (5.0) <058e89c6-20a1-3cfe-a2b1-5dc823663a95> /Volumes/VOLUME/*/AppleSRP.framework/AppleSRP
       0x32a1ac000 -        0x32a1bffff com.apple.InputToolKit (1.0) <87fc7341-1492-3929-8704-a5f5c963096a> /Volumes/VOLUME/*/InputToolKit.framework/InputToolKit
       0x332adc000 -        0x332c4ffff com.apple.AccessibilitySharedUISupport (1.0) <5ae76fd9-2e40-399c-bf5f-de61b9a1fc68> /Volumes/VOLUME/*/AccessibilitySharedUISupport.framework/AccessibilitySharedUISupport
       0x32e914000 -        0x32e937fff com.apple.GenerativeFunctions.GenerativePartnerService (1.0) <c03e4ebd-6ee4-3056-aad6-29171777c860> /Volumes/VOLUME/*/GenerativePartnerService.framework/GenerativePartnerService
       0x331480000 -        0x3314cffff com.apple.GenerativeFunctions.GenerativePartnerServiceUI (1.0) <4eeaddd7-1fe4-3d90-bf7e-8834ea2dfe03> /Volumes/VOLUME/*/GenerativePartnerServiceUI.framework/GenerativePartnerServiceUI
       0x322cd0000 -        0x322cd7fff libswiftARKit.dylib (*) <5525197a-a33a-3dfc-9b8e-7a988cb52e65> /Volumes/VOLUME/*/libswiftARKit.dylib
       0x3345bc000 -        0x334acbfff com.apple.Charts (1.0) <c716b837-9415-3c69-a302-a4d12be818c1> /Volumes/VOLUME/*/Charts.framework/Charts
       0x331ed4000 -        0x331f37fff com.apple.RealityKit (1.0) <d6c790ed-6fd6-3c96-9012-e0538d791059> /Volumes/VOLUME/*/RealityKit.framework/RealityKit
       0x333140000 -        0x333247fff com.apple.RealityIO (1.0) <090acefa-396b-3509-9060-753944f66cf7> /Volumes/VOLUME/*/RealityIO.framework/RealityIO
       0x33150c000 -        0x331567fff com.apple.ARKit (1.0) <07e5beeb-ee93-3521-923a-40d3e31007c6> /Volumes/VOLUME/*/ARKit.framework/ARKit
       0x332dac000 -        0x332ebbfff com.apple.SpriteKit (*) <b915d8d3-2ccd-38b7-8dcb-18cc53ca953b> /Volumes/VOLUME/*/SpriteKit.framework/SpriteKit
       0x32e958000 -        0x32e97ffff com.apple.audio.OpenAL (1.3) <8a55096f-4d2a-3977-967d-b52aff9863ac> /Volumes/VOLUME/*/OpenAL.framework/OpenAL
       0x32ee7c000 -        0x32ee97fff com.apple.Jet (*) <66b8f4c6-35e1-3981-a83b-4695b3c439c2> /Volumes/VOLUME/*/Jet.framework/Jet
       0x334ff8000 -        0x3351dffff com.apple.GameCenterFoundation (820.5.18) <6e6a2230-faec-3e08-8e97-d898b23f5e95> /Volumes/VOLUME/*/GameCenterFoundation.framework/GameCenterFoundation
       0x331d98000 -        0x331ddffff com.apple.GameCenterUICore (820.5.18) <1ee61b9c-3e10-34c9-a5f6-7227c4b34f8c> /Volumes/VOLUME/*/GameCenterUICore.framework/GameCenterUICore
       0x335eb4000 -        0x336423fff com.apple.GameCenterUI (820.5.18) <97c11720-e518-3367-b643-057f424457ed> /Volumes/VOLUME/*/GameCenterUI.framework/GameCenterUI
       0x332014000 -        0x332083fff com.apple.GameplayKit (*) <8a392e22-fe31-3316-87aa-5284013860ab> /Volumes/VOLUME/*/GameplayKit.framework/GameplayKit
       0x17c608000 -        0x17c60bfff com.apple.LegacyGameKit (820.5.18) <bb2f7135-97df-3393-ab2b-8ea91ccc4c22> /Volumes/VOLUME/*/LegacyGameKit.framework/LegacyGameKit
       0x334bf0000 -        0x334d23fff com.apple.GameServices (*) <8515845f-78bb-3926-a016-4f9ff9fe1f01> /Volumes/VOLUME/*/GameServices.framework/GameServices
       0x3357b4000 -        0x3359bbfff com.apple.GameServicesCore (*) <4eee89d6-ab06-3cb5-b178-56f90e8f1ab7> /Volumes/VOLUME/*/GameServicesCore.framework/GameServicesCore
       0x332fb0000 -        0x333053fff com.apple.GameKitServices (3.0) <c6f4a208-aa85-31b7-8474-9d6acb50b300> /Volumes/VOLUME/*/GameKitServices.framework/GameKitServices
       0x3334e0000 -        0x333547fff com.apple.facetime.-GroupActivities-UIKit (1.0) <27d27d5d-da6b-3e22-8f2a-444222a2b3c7> /Volumes/VOLUME/*/_GroupActivities_UIKit.framework/_GroupActivities_UIKit
       0x32cce8000 -        0x32ccfffff com.apple.GameCenterOverlayService (*) <17712d3e-1958-37b5-bcb7-edd962d69d27> /Volumes/VOLUME/*/GameCenterOverlayService.framework/GameCenterOverlayService
       0x333684000 -        0x33373bfff com.apple.GameCenterServerClient (*) <b5cc664e-e0c2-3e2b-8d13-4fad15329e10> /Volumes/VOLUME/*/GameCenterServerClient.framework/GameCenterServerClient
       0x329430000 -        0x32943bfff com.apple.HTTPTypesInternal (1.0) <70df5137-b095-3d9f-bf21-3cde17718204> /Volumes/VOLUME/*/HTTPTypesInternal.framework/HTTPTypesInternal
       0x3320e4000 -        0x33217bfff com.apple.OpenAPIRuntimeInternal (1.8.3) <e628d24c-6a7c-3b55-a46f-89138f7608fe> /Volumes/VOLUME/*/OpenAPIRuntimeInternal.framework/OpenAPIRuntimeInternal
       0x17ff9c000 -        0x17ff9ffff libswiftDataDetection.dylib (*) <3119af59-1eaa-3731-a7cb-c21c556b63c0> /Volumes/VOLUME/*/libswiftDataDetection.dylib
       0x126b2c000 -        0x126b2ffff libswiftFileProvider.dylib (*) <8c7e08c0-69a9-3be9-8f41-60c74fba8e5c> /Volumes/VOLUME/*/libswiftFileProvider.dylib
       0x338cc8000 -        0x339ef7fff com.apple.PassKitUI (1.0) <5bef9f3d-6f58-3d69-b9a7-90439568baf2> /Volumes/VOLUME/*/PassKitUI.framework/PassKitUI
       0x3321e4000 -        0x33223bfff com.apple.BridgePreferences (1.0) <486c4324-cb25-3379-8b39-1823529545a4> /Volumes/VOLUME/*/BridgePreferences.framework/BridgePreferences
       0x336e8c000 -        0x3370effff com.apple.AppleMediaServicesUI (1.0) <26e79d8e-effb-33d5-8f22-045b7a4e04ce> /Volumes/VOLUME/*/AppleMediaServicesUI.framework/AppleMediaServicesUI
       0x33083c000 -        0x33086ffff com.apple.PaymentUIBase (1.0) <c9008a86-51ca-3c1d-ab11-a9ead6c9ca08> /Volumes/VOLUME/*/PaymentUIBase.framework/PaymentUIBase
       0x3307d0000 -        0x3307e3fff com.apple.CarPlaySetup (1.0) <ea9003c1-6d80-3301-80b5-e576efc91831> /Volumes/VOLUME/*/CarPlaySetup.framework/CarPlaySetup
       0x3330c0000 -        0x3330f7fff com.apple.SetupAssistantUI (1.0) <d1b56623-5916-3fd2-9870-7c7a7f4569ff> /Volumes/VOLUME/*/SetupAssistantUI.framework/SetupAssistantUI
       0x334ef0000 -        0x334f33fff com.apple.PlatterKit (1.0) <36cf5395-88fa-3d80-8016-aec0c501e57f> /Volumes/VOLUME/*/PlatterKit.framework/PlatterKit
       0x337ba0000 -        0x33809bfff com.apple.weatherui (6.0) <c8060ef9-44f5-34c3-b0e2-bd3c4b5a34ec> /Volumes/VOLUME/*/WeatherUI.framework/WeatherUI
       0x334e48000 -        0x334e6ffff com.apple.PassKitUIFoundation (1.0) <c4d315e9-a488-310d-9fa3-75fda9819a2c> /Volumes/VOLUME/*/PassKitUIFoundation.framework/PassKitUIFoundation
       0x335b80000 -        0x335cf7fff com.apple.weatherkit (6.0) <22e51ad7-3ba2-35bb-b040-3c415de6fe46> /Volumes/VOLUME/*/WeatherKit.framework/WeatherKit
       0x33697c000 -        0x336ae7fff com.apple.coreidv.CoreIDVUI (8.504) <d161e29f-f77b-3d78-a8ca-e4af358dc53f> /Volumes/VOLUME/*/CoreIDVUI.framework/CoreIDVUI
       0x329b70000 -        0x329b7ffff com.apple.FinHealth (1.0) <f3214a2e-f8ea-365a-ac54-89b7be3bcefb> /Volumes/VOLUME/*/FinHealth.framework/FinHealth
       0x3354f0000 -        0x335553fff com.apple.PBBridgeSupport (1.0) <37885e42-e122-37e5-af46-9251b2237304> /Volumes/VOLUME/*/PBBridgeSupport.framework/PBBridgeSupport
       0x3355d4000 -        0x33562ffff com.apple.AccessoryNotifications (1.0) <75da7711-4bb5-3860-9616-2b26678951f3> /Volumes/VOLUME/*/AccessoryNotifications.framework/AccessoryNotifications
       0x334f98000 -        0x334fbbfff com.apple.InAppMessages (1.0) <864319e6-d966-3c25-b376-c331cf727b5e> /Volumes/VOLUME/*/InAppMessages.framework/InAppMessages
       0x3272f8000 -        0x3272fffff com.apple.InAppMessagesCore (1.0) <056ad2c8-758a-3ec0-b3f0-afdc62315ad4> /Volumes/VOLUME/*/InAppMessagesCore.framework/InAppMessagesCore
       0x3383c8000 -        0x338617fff com.apple.weathercore (6.0) <5960b9d9-1896-34ad-84d9-22b584141a67> /Volumes/VOLUME/*/WeatherCore.framework/WeatherCore
       0x33771c000 -        0x33792bfff com.apple.weatherdaemon (6.0) <9188791a-4136-3d65-bee4-7b6c1d0bbee3> /Volumes/VOLUME/*/WeatherDaemon.framework/WeatherDaemon
       0x33540c000 -        0x33544ffff com.apple.weatherdata (6.0) <efc6adcd-874e-36a3-a9fb-b40c8ee42e81> /Volumes/VOLUME/*/WeatherData.framework/WeatherData
       0x336bf8000 -        0x336c47fff com.apple.coreidv.CoreIDCred (8.504) <d98b2a84-9ad4-3260-b16a-dbf3ca7074c7> /Volumes/VOLUME/*/CoreIDCred.framework/CoreIDCred
       0x322cf0000 -        0x322cf7fff com.apple.coreidv.CoreIDVRGBLiveness (8.504) <cdd79ac2-a6e7-35f8-a3a3-306e869c9ef8> /Volumes/VOLUME/*/CoreIDVRGBLiveness.framework/CoreIDVRGBLiveness
       0x335498000 -        0x3354bffff com.apple.Finhealth.FinHealthInsights (1.0) <fd3fccbb-57cc-35d3-8cd4-275bffd14106> /Volumes/VOLUME/*/FinHealthInsights.framework/FinHealthInsights
       0x3373a4000 -        0x337447fff com.apple.Finhealth.FinHealthCore (1.0) <c27f9656-6170-3119-933f-cb87333da175> /Volumes/VOLUME/*/FinHealthCore.framework/FinHealthCore
       0x335698000 -        0x3356b7fff com.apple.MetricKit (1.0) <bab62ede-1a12-3fe6-b4fd-8476487573d7> /Volumes/VOLUME/*/MetricKit.framework/MetricKit
       0x32c884000 -        0x32c88ffff libswiftPassKit.dylib (*) <7b4d008f-0503-3dce-9409-4b9a2eb134e9> /Volumes/VOLUME/*/libswiftPassKit.dylib
       0x330808000 -        0x330817fff com.apple.DeviceCheck (1.0) <47a09300-ef84-36df-9248-e877740bb0e2> /Volumes/VOLUME/*/DeviceCheck.framework/DeviceCheck
       0x30511c000 -        0x305127fff libobjc-trampolines.dylib (*) <75fa6778-178f-394f-9c63-711780430596> /Volumes/VOLUME/*/libobjc-trampolines.dylib
       0x337680000 -        0x3376b7fff com.apple.MTLSimDriver (373.2) <8339ca77-3986-3588-9df9-8b8d511ae608> /Volumes/VOLUME/*/MTLSimDriver.framework/MTLSimDriver
       0x337abc000 -        0x337aebfff com.apple.gpusw.MetalSerializer (1.0) <19460939-4bce-3e8d-8868-5388dd78ace3> /Volumes/VOLUME/*/MetalSerializer.framework/MetalSerializer
       0x357010000 -        0x357263fff com.apple.RawCamera.bundle (9.42.0) <51d3ffaf-1f8f-30ad-9c92-0f98a384fc29> /Volumes/VOLUME/*/RawCamera.bundle/RawCamera
       0x357a80000 -        0x357c6bfff com.apple.VideoProcessing (1.0) <8aa6f52b-e350-3a56-adeb-f60906827650> /Volumes/VOLUME/*/VideoProcessing.framework/VideoProcessing
       0x358c80000 -        0x358dfbfff VCPHEVC.videocodec (*) <17654445-b8bb-386f-9150-afea3a536eba> /Volumes/VOLUME/*/VCPHEVC.videocodec
       0x35a000000 -        0x35a1c7fff H264SW.videocodec (*) <d0e8d5b2-ba47-3da7-9465-ab56659499be> /Volumes/VOLUME/*/H264SW.videocodec
       0x35b7cc000 -        0x35badffff AV1SW.videoencoder (*) <a1b8b6ed-178e-36f2-bdb5-7e8cca128de1> /Volumes/VOLUME/*/AV1SW.videoencoder
       0x11bc48000 -        0x11bc63fff libCGInterfaces.dylib (*) <c934f7e7-29cf-3bff-8e9a-25a8ec9da538> /Volumes/VOLUME/*/Accelerate.framework/Frameworks/vImage.framework/Libraries/libCGInterfaces.dylib
       0x33b7b4000 -        0x33b7bffff libMobileGestaltExtensions.dylib (*) <f850481f-4f01-3d7f-b1d2-d7eccd769e75> /Volumes/VOLUME/*/libMobileGestaltExtensions.dylib
       0x100c68000 -        0x100d0ffff dyld (*) <a237ef81-b68b-37ba-a165-92c965529534> /usr/lib/dyld
               0x0 - 0xffffffffffffffff ??? (*) <00000000-0000-0000-0000-000000000000> ???

External Modification Summary:
  Calls made by other processes targeting this process:
    task_for_pid: 0
    thread_create: 0
    thread_set_state: 0
  Calls made by this process:
    task_for_pid: 0
    thread_create: 0
    thread_set_state: 0
  Calls made by all processes on this machine:
    task_for_pid: 0
    thread_create: 0
    thread_set_state: 0

VM Region Summary:
ReadOnly portion of Libraries: Total=2.6G resident=0K(0%) swapped_out_or_unallocated=2.6G(100%)
Writable regions: Total=383.4M written=1843K(0%) resident=1827K(0%) swapped_out=16K(0%) unallocated=381.6M(100%)

                                  VIRTUAL   REGION 
REGION TYPE                          SIZE    COUNT (non-coalesced) 
===========                       =======  ======= 
Activity Tracing                     256K        1 
CoreMedia memory pool (reserved)     128K        1         reserved VM address space (unallocated)
Foundation                            16K        1 
IOSurface                           39.1M        5 
Kernel Alloc Once                     32K        1 
MALLOC                              89.1M       24 
MALLOC guard page                   3584K        4 
Mach message                          16K        1 
SQLite page cache                    512K        4 
STACK GUARD                         56.6M       36 
Stack                               35.6M       36 
VM_ALLOCATE                        190.1M      492 
VM_ALLOCATE (reserved)               416K       10         reserved VM address space (unallocated)
__AUTH_CONST                          32K        1 
__DATA                              83.9M     1521 
__DATA_CONST                       152.7M     1203 
__DATA_DIRTY                         272K       14 
__FONT_DATA                           16K        1 
__LINKEDIT                           1.1G     1219 
__TEXT                               1.4G     1219 
__TPRO_CONST                         176K        3 
dyld private memory                  6.0G       15 
mapped file                        227.0M      177 
page table in kernel                1827K        1 
shared memory                         16K        1 
===========                       =======  ======= 
TOTAL                                9.4G     5991 
TOTAL, minus reserved VM space       9.4G     5991 


Error Formulating Crash Report:
dyld_process_snapshot_get_shared_cache failed

-----------
Full Report
-----------

{"app_name":"Runner","timestamp":"2026-05-20 14:01:29.00 -0400","app_version":"1.0.2","slice_uuid":"127542f1-3e8e-3c73-bb0a-a67322e7493f","build_version":"1","platform":7,"bundleID":"com.nzubia.global","share_with_app_devs":0,"is_first_party":0,"bug_type":"309","os_version":"macOS 26.5 (25F71)","roots_installed":0,"name":"Runner","incident_id":"037B8FE7-DB4B-4601-95B3-2D96719671DE"}
{
  "uptime" : 34000,
  "procRole" : "Foreground",
  "version" : 2,
  "userID" : 501,
  "deployVersion" : 210,
  "modelCode" : "Mac16,1",
  "coalitionID" : 1448,
  "osVersion" : {
    "train" : "macOS 26.5",
    "build" : "25F71",
    "releaseType" : "User"
  },
  "captureTime" : "2026-05-20 14:00:10.2119 -0400",
  "codeSigningMonitor" : 2,
  "incident" : "037B8FE7-DB4B-4601-95B3-2D96719671DE",
  "pid" : 36364,
  "translated" : false,
  "cpuType" : "ARM-64",
  "procLaunch" : "2026-05-20 14:00:02.6590 -0400",
  "procStartAbsTime" : 829579855258,
  "procExitAbsTime" : 829758301583,
  "procName" : "Runner",
  "procPath" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Runner",
  "bundleInfo" : {"CFBundleShortVersionString":"1.0.2","CFBundleVersion":"1","CFBundleIdentifier":"com.nzubia.global"},
  "storeInfo" : {"deviceIdentifierForVendor":"DC9F22FA-B61F-515E-9D10-E1DA21BF4312","thirdParty":true},
  "parentProc" : "launchd_sim",
  "parentPid" : 2192,
  "coalitionName" : "com.apple.CoreSimulator.SimDevice.AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836",
  "crashReporterKey" : "EC127E64-511A-1F6D-DA98-EC068ADF38E6",
  "appleIntelligenceStatus" : {"state":"available"},
  "developerMode" : 1,
  "responsiblePid" : 2175,
  "responsibleProc" : "SimulatorTrampoline",
  "codeSigningID" : "com.nzubia.global",
  "codeSigningTeamID" : "",
  "codeSigningFlags" : 570425857,
  "codeSigningValidationCategory" : 10,
  "codeSigningTrustLevel" : 4294967295,
  "codeSigningAuxiliaryInfo" : 0,
  "instructionByteStream" : {"beforePC":"4wAAVP17v6n9AwCRIOP\/l78DAJH9e8GowANf1sADX9YQKYDSARAA1A==","atPC":"4wAAVP17v6n9AwCRFuP\/l78DAJH9e8GowANf1sADX9ZwCoDSARAA1A=="},
  "bootSessionUUID" : "5B6530FD-8EAD-46E5-AE3A-6D50448F76D9",
  "wakeTime" : 32243,
  "sleepWakeUUID" : "BA2086AB-10DF-482D-B60B-E86007A56F48",
  "sip" : "enabled",
  "exception" : {"codes":"0x0000000000000000, 0x0000000000000000","rawCodes":[0,0],"type":"EXC_CRASH","signal":"SIGABRT"},
  "termination" : {"flags":0,"code":6,"namespace":"SIGNAL","indicator":"Abort trap: 6","byProc":"Runner","byPid":36364},
  "extMods" : {"caller":{"thread_create":0,"thread_set_state":0,"task_for_pid":0},"system":{"thread_create":0,"thread_set_state":0,"task_for_pid":0},"targeted":{"thread_create":0,"thread_set_state":0,"task_for_pid":0},"warnings":0},
  "lastExceptionBacktrace" : [{"imageOffset":1265120,"symbol":"__exceptionPreprocess","symbolLocation":160,"imageIndex":99},{"imageOffset":177208,"symbol":"objc_exception_throw","symbolLocation":72,"imageIndex":97},{"imageOffset":1264892,"symbol":"-[NSException initWithCoder:]","symbolLocation":0,"imageIndex":99},{"imageOffset":9856,"sourceLine":307,"sourceFile":"FIRApp.m","symbol":"+[FIRApp addAppToAppDictionary:]","imageIndex":23,"symbolLocation":248},{"imageOffset":6556,"sourceLine":187,"sourceFile":"FIRApp.m","symbol":"+[FIRApp configureWithName:options:]","imageIndex":23,"symbolLocation":1204},{"imageOffset":7650724,"symbol":"-[FLTFirebaseCorePlugin initializeAppAppName:initializeAppRequest:completion:]","symbolLocation":1560,"imageIndex":2},{"imageOffset":7678408,"symbol":"__SetUpFirebaseCoreHostApiWithSuffix_block_invoke","symbolLocation":312,"imageIndex":2},{"imageOffset":5540636,"symbol":"__48-[FlutterBasicMessageChannel setMessageHandler:]_block_invoke","symbolLocation":160,"imageIndex":117},{"imageOffset":436152,"symbol":"invocation function for block in flutter::PlatformMessageHandlerIos::HandlePlatformMessage(std::__fl::unique_ptr<flutter::PlatformMessage, std::__fl::default_delete<flutter::PlatformMessage>>)","symbolLocation":108,"imageIndex":117},{"imageOffset":5792,"symbol":"_dispatch_call_block_and_release","symbolLocation":24,"imageIndex":127},{"imageOffset":114328,"symbol":"_dispatch_client_callout","symbolLocation":12,"imageIndex":127},{"imageOffset":231240,"symbol":"<deduplicated_symbol>","symbolLocation":24,"imageIndex":127},{"imageOffset":68916,"symbol":"_dispatch_main_queue_drain","symbolLocation":1172,"imageIndex":127},{"imageOffset":67728,"symbol":"_dispatch_main_queue_callback_4CF","symbolLocation":40,"imageIndex":127},{"imageOffset":604820,"symbol":"__CFRUNLOOP_IS_SERVICING_THE_MAIN_DISPATCH_QUEUE__","symbolLocation":12,"imageIndex":99},{"imageOffset":601196,"symbol":"__CFRunLoopRun","symbolLocation":1884,"imageIndex":99},{"imageOffset":579844,"symbol":"_CFRunLoopRunSpecificWithOptions","symbolLocation":496,"imageIndex":99},{"imageOffset":10688,"symbol":"GSEventRunModal","symbolLocation":116,"imageIndex":336},{"imageOffset":18990284,"symbol":"-[UIApplication _run]","symbolLocation":776,"imageIndex":573},{"imageOffset":26306832,"symbol":"UIApplicationMain","symbolLocation":120,"imageIndex":573},{"imageOffset":3938336,"imageIndex":573},{"imageOffset":18128,"sourceFile":"\/<compiler-generated>","symbol":"static UIApplicationDelegate.main()","symbolLocation":128,"imageIndex":2},{"imageOffset":17984,"sourceFile":"\/<compiler-generated>","symbol":"static AppDelegate.$main()","symbolLocation":44,"imageIndex":2},{"imageOffset":18252,"sourceFile":"\/<compiler-generated>","symbol":"__debug_main_executable_dylib_entry_point","symbolLocation":28,"imageIndex":2},{"imageOffset":45284,"symbol":"start_sim","symbolLocation":20,"imageIndex":1},{"imageOffset":130560,"symbol":"start","symbolLocation":6992,"imageIndex":1218}],
  "faultingThread" : 0,
  "threads" : [{"triggered":true,"id":836437,"threadState":{"x":[{"value":0},{"value":0},{"value":0},{"value":0},{"value":4517235895},{"value":6159543968},{"value":110},{"value":0},{"value":4308737536,"symbolLocation":0,"symbol":"_main_thread"},{"value":15050249248248029507},{"value":2},{"value":4294967293},{"value":0},{"value":0},{"value":0},{"value":0},{"value":328},{"value":18446744072367376383},{"value":0},{"value":6},{"value":259},{"value":4308737760,"symbolLocation":224,"symbol":"_main_thread"},{"value":4421320704,"symbolLocation":0,"symbol":"OBJC_IVAR_$_Object.isa"},{"value":4565225024,"symbolLocation":0,"symbol":"_dispatch_main_q"},{"value":4565225024,"symbolLocation":0,"symbol":"_dispatch_main_q"},{"value":14393072832},{"value":14393074112},{"value":0},{"value":276}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578943800},"cpsr":{"value":1073741824},"fp":{"value":6159543824},"sp":{"value":6159543792},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577085580,"matchesCrashFrame":1},"far":{"value":0}},"queue":"com.apple.main-thread","frames":[{"imageOffset":34956,"symbol":"__pthread_kill","symbolLocation":8,"imageIndex":158},{"imageOffset":25400,"symbol":"pthread_kill","symbolLocation":264,"imageIndex":161},{"imageOffset":473476,"symbol":"abort","symbolLocation":116,"imageIndex":133},{"imageOffset":83920,"symbol":"__abort_message","symbolLocation":128,"imageIndex":121},{"imageOffset":4404,"symbol":"demangling_terminate_handler()","symbolLocation":268,"imageIndex":121},{"imageOffset":29084,"symbol":"_objc_terminate()","symbolLocation":124,"imageIndex":97},{"imageOffset":246116,"sourceLine":155,"sourceFile":"SentryCrashMonitor_CPPException.cpp","symbol":"sentrycrashcm_cppexception_callOriginalTerminationHandler","imageIndex":56,"symbolLocation":36},{"imageOffset":248276,"sourceLine":255,"sourceFile":"SentryCrashMonitor_CPPException.cpp","symbol":"CPPExceptionTerminate()","imageIndex":56,"symbolLocation":1740},{"imageOffset":67472,"symbol":"std::__terminate(void (*)())","symbolLocation":12,"imageIndex":121},{"imageOffset":79628,"symbol":"__cxxabiv1::failed_throw(__cxxabiv1::__cxa_exception*)","symbolLocation":32,"imageIndex":121},{"imageOffset":79596,"symbol":"__cxa_throw","symbolLocation":88,"imageIndex":121},{"imageOffset":177520,"symbol":"objc_exception_throw","symbolLocation":384,"imageIndex":97},{"imageOffset":1264892,"symbol":"+[NSException raise:format:]","symbolLocation":124,"imageIndex":99},{"imageOffset":9856,"sourceLine":307,"sourceFile":"FIRApp.m","symbol":"+[FIRApp addAppToAppDictionary:]","imageIndex":23,"symbolLocation":248},{"imageOffset":6556,"sourceLine":187,"sourceFile":"FIRApp.m","symbol":"+[FIRApp configureWithName:options:]","imageIndex":23,"symbolLocation":1204},{"imageOffset":7650724,"symbol":"-[FLTFirebaseCorePlugin initializeAppAppName:initializeAppRequest:completion:]","symbolLocation":1560,"imageIndex":2},{"imageOffset":7678408,"symbol":"__SetUpFirebaseCoreHostApiWithSuffix_block_invoke","symbolLocation":312,"imageIndex":2},{"imageOffset":5540636,"symbol":"__48-[FlutterBasicMessageChannel setMessageHandler:]_block_invoke","symbolLocation":160,"imageIndex":117},{"imageOffset":436152,"symbol":"invocation function for block in flutter::PlatformMessageHandlerIos::HandlePlatformMessage(std::__fl::unique_ptr<flutter::PlatformMessage, std::__fl::default_delete<flutter::PlatformMessage>>)","symbolLocation":108,"imageIndex":117},{"imageOffset":5792,"symbol":"_dispatch_call_block_and_release","symbolLocation":24,"imageIndex":127},{"imageOffset":114328,"symbol":"_dispatch_client_callout","symbolLocation":12,"imageIndex":127},{"imageOffset":231240,"symbol":"<deduplicated_symbol>","symbolLocation":24,"imageIndex":127},{"imageOffset":68916,"symbol":"_dispatch_main_queue_drain","symbolLocation":1172,"imageIndex":127},{"imageOffset":67728,"symbol":"_dispatch_main_queue_callback_4CF","symbolLocation":40,"imageIndex":127},{"imageOffset":604820,"symbol":"__CFRUNLOOP_IS_SERVICING_THE_MAIN_DISPATCH_QUEUE__","symbolLocation":12,"imageIndex":99},{"imageOffset":601196,"symbol":"__CFRunLoopRun","symbolLocation":1884,"imageIndex":99},{"imageOffset":579844,"symbol":"_CFRunLoopRunSpecificWithOptions","symbolLocation":496,"imageIndex":99},{"imageOffset":10688,"symbol":"GSEventRunModal","symbolLocation":116,"imageIndex":336},{"imageOffset":18990284,"symbol":"-[UIApplication _run]","symbolLocation":776,"imageIndex":573},{"imageOffset":26306832,"symbol":"UIApplicationMain","symbolLocation":120,"imageIndex":573},{"imageOffset":3938336,"imageIndex":573},{"imageOffset":18128,"sourceFile":"\/<compiler-generated>","symbol":"static UIApplicationDelegate.main()","symbolLocation":128,"imageIndex":2},{"imageOffset":17984,"sourceFile":"\/<compiler-generated>","symbol":"static AppDelegate.$main()","symbolLocation":44,"imageIndex":2},{"imageOffset":18252,"sourceFile":"\/<compiler-generated>","symbol":"__debug_main_executable_dylib_entry_point","symbolLocation":28,"imageIndex":2},{"imageOffset":45284,"symbol":"start_sim","symbolLocation":20,"imageIndex":1},{"imageOffset":130560,"symbol":"start","symbolLocation":6992,"imageIndex":1218}]},{"id":836543,"frames":[],"threadState":{"x":[{"value":13722447872},{"value":6915},{"value":13721911296},{"value":13722446720},{"value":1982472},{"value":1},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":0},"cpsr":{"value":0},"fp":{"value":0},"sp":{"value":13722446720},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4578925088},"far":{"value":0}}},{"id":836544,"frames":[],"threadState":{"x":[{"value":13781905408},{"value":2819},{"value":13781368832},{"value":0},{"value":409603},{"value":18446744073709551615},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":0},"cpsr":{"value":0},"fp":{"value":0},"sp":{"value":13781905408},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4578925088},"far":{"value":0}}},{"id":836545,"frames":[],"threadState":{"x":[{"value":13804711936},{"value":15363},{"value":13804175360},{"value":0},{"value":409604},{"value":18446744073709551615},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":0},"cpsr":{"value":0},"fp":{"value":0},"sp":{"value":13804711936},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4578925088},"far":{"value":0}}},{"id":836546,"threadState":{"x":[{"value":13901414400},{"value":13901479904},{"value":0},{"value":13901447104},{"value":32768},{"value":32},{"value":0},{"value":256},{"value":32529},{"value":32768},{"value":13902290920},{"value":12277},{"value":0},{"value":18386533786166368015},{"value":18386533786166368015},{"value":18386533786166368015},{"value":4578242736,"symbolLocation":0,"symbol":"_platform_memmove"},{"value":8},{"value":0},{"value":13898149888},{"value":0},{"value":32768},{"value":32506},{"value":4307737400},{"value":4307736888},{"value":32},{"value":8},{"value":4294967295},{"value":13885165796}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4307686752},"cpsr":{"value":536870912},"fp":{"value":13805280032},"sp":{"value":13805280000},"esr":{"value":2449473615,"description":"(Data Abort) byte write Permission fault"},"pc":{"value":4307686856},"far":{"value":0}},"queue":"io.sentry.session-replay.processing","frames":[{"imageOffset":5576,"imageIndex":6},{"imageOffset":13864,"imageIndex":6},{"imageOffset":9328,"symbol":"deflate","symbolLocation":2388,"imageIndex":6},{"imageOffset":1619424,"symbol":"png_compress_IDAT","symbolLocation":276,"imageIndex":36},{"imageOffset":1631196,"symbol":"png_write_find_filter","symbolLocation":1144,"imageIndex":36},{"imageOffset":1389040,"symbol":"_cg_png_write_row_sized","symbolLocation":1068,"imageIndex":36},{"imageOffset":3976620,"symbol":"PNGWritePlugin::writePNG(IIOImagePixelDataProvider*, IIODictionary*)","symbolLocation":1112,"imageIndex":36},{"imageOffset":1489964,"symbol":"PNGWritePlugin::writeAll()","symbolLocation":948,"imageIndex":36},{"imageOffset":1490712,"symbol":"PNGWritePlugin::WriteProc(void*, void*, void*, void*)","symbolLocation":172,"imageIndex":36},{"imageOffset":1670752,"symbol":"IIOImageDestination::finalizeDestination(unsigned long long*)","symbolLocation":784,"imageIndex":36},{"imageOffset":1688032,"symbol":"CGImageDestinationFinalize","symbolLocation":192,"imageIndex":36},{"imageOffset":5831532,"symbol":"_UIImageDataRepresentation","symbolLocation":448,"imageIndex":573},{"imageOffset":1476700,"sourceLine":88,"sourceFile":"SentryOnDemandReplay.swift","symbol":"SentryOnDemandReplay.addFrame(timestamp:maskedViewImage:forScreen:)","imageIndex":56,"symbolLocation":892},{"imageOffset":1475076,"sourceLine":82,"sourceFile":"SentryOnDemandReplay.swift","symbol":"closure #1 in SentryOnDemandReplay.addFrameAsync(timestamp:maskedViewImage:forScreen:)","imageIndex":56,"symbolLocation":92},{"imageOffset":1157276,"sourceFile":"\/<compiler-generated>","symbol":"thunk for @escaping @callee_guaranteed @Sendable () -> ()","symbolLocation":48,"imageIndex":56},{"imageOffset":8268,"sourceLine":30,"sourceFile":"_SentryDispatchQueueWrapperInternal.m","symbol":"__62-[_SentryDispatchQueueWrapperInternal dispatchAsyncWithBlock:]_block_invoke","imageIndex":56,"symbolLocation":56},{"imageOffset":5792,"symbol":"_dispatch_call_block_and_release","symbolLocation":24,"imageIndex":127},{"imageOffset":114328,"symbol":"_dispatch_client_callout","symbolLocation":12,"imageIndex":127},{"imageOffset":42788,"symbol":"_dispatch_lane_serial_drain","symbolLocation":984,"imageIndex":127},{"imageOffset":45544,"symbol":"_dispatch_lane_invoke","symbolLocation":396,"imageIndex":127},{"imageOffset":89792,"symbol":"_dispatch_root_queue_drain_deferred_wlh","symbolLocation":288,"imageIndex":127},{"imageOffset":87560,"symbol":"_dispatch_workloop_worker_thread","symbolLocation":692,"imageIndex":127},{"imageOffset":11304,"symbol":"_pthread_wqthread","symbolLocation":288,"imageIndex":161},{"imageOffset":6696,"symbol":"start_wqthread","symbolLocation":8,"imageIndex":161}]},{"id":836560,"name":"com.apple.uikit.eventfetch-thread","threadState":{"x":[{"value":268451845},{"value":21592279046},{"value":8589934592},{"value":63784559312896},{"value":2162692},{"value":63784559312896},{"value":2},{"value":4294967295},{"value":0},{"value":17179869184},{"value":0},{"value":2},{"value":0},{"value":0},{"value":14851},{"value":3072},{"value":18446744073709551569},{"value":18446744072367376383},{"value":0},{"value":4294967295},{"value":2},{"value":63784559312896},{"value":2162692},{"value":63784559312896},{"value":21592279046},{"value":13805854088},{"value":8589934592},{"value":18446744073709550527},{"value":4577329152,"symbolLocation":0,"symbol":"_libkernel_string_functions"}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4577123932},"cpsr":{"value":0},"fp":{"value":13805853936},"sp":{"value":13805853856},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577053552},"far":{"value":0}},"frames":[{"imageOffset":2928,"symbol":"mach_msg2_trap","symbolLocation":8,"imageIndex":158},{"imageOffset":73308,"symbol":"mach_msg2_internal","symbolLocation":72,"imageIndex":158},{"imageOffset":35908,"symbol":"mach_msg_overwrite","symbolLocation":484,"imageIndex":158},{"imageOffset":3824,"symbol":"mach_msg","symbolLocation":20,"imageIndex":158},{"imageOffset":604096,"symbol":"__CFRunLoopServiceMachPort","symbolLocation":156,"imageIndex":99},{"imageOffset":600440,"symbol":"__CFRunLoopRun","symbolLocation":1128,"imageIndex":99},{"imageOffset":579844,"symbol":"_CFRunLoopRunSpecificWithOptions","symbolLocation":496,"imageIndex":99},{"imageOffset":9370188,"symbol":"-[NSRunLoop(NSRunLoop) runMode:beforeDate:]","symbolLocation":208,"imageIndex":31},{"imageOffset":9370728,"symbol":"-[NSRunLoop(NSRunLoop) runUntilDate:]","symbolLocation":60,"imageIndex":31},{"imageOffset":16050900,"symbol":"-[UIEventFetcher threadMain]","symbolLocation":404,"imageIndex":573},{"imageOffset":9522908,"symbol":"__NSThread__start__","symbolLocation":716,"imageIndex":31},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836561,"frames":[],"threadState":{"x":[{"value":13813280768},{"value":12051},{"value":13812744192},{"value":0},{"value":409604},{"value":18446744073709551615},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":0},"cpsr":{"value":0},"fp":{"value":0},"sp":{"value":13813280768},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4578925088},"far":{"value":0}}},{"id":836563,"threadState":{"x":[{"value":18446744073709551612},{"value":0},{"value":0},{"value":9999999},{"value":14322951488},{"value":0},{"value":0},{"value":1027},{"value":9999998},{"value":500},{"value":4294967292},{"value":4294967293},{"value":14320978880},{"value":34},{"value":0},{"value":13834518528},{"value":515},{"value":3},{"value":0},{"value":0},{"value":1},{"value":9999999},{"value":14320978884},{"value":2361183241434822607},{"value":1000},{"value":4294967295},{"value":9999999},{"value":0},{"value":196610}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4564824464},"cpsr":{"value":2147483648},"fp":{"value":13813845312},"sp":{"value":13813845280},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577060744},"far":{"value":0}},"queue":"io.sentry.default","frames":[{"imageOffset":10120,"symbol":"__ulock_wait","symbolLocation":8,"imageIndex":158},{"imageOffset":12688,"symbol":"_dlock_wait","symbolLocation":52,"imageIndex":127},{"imageOffset":11808,"symbol":"_dispatch_wait_on_address","symbolLocation":132,"imageIndex":127},{"imageOffset":13512,"symbol":"_dispatch_group_wait_slow","symbolLocation":52,"imageIndex":127},{"imageOffset":51512,"symbol":"OS_dispatch_group.wait(wallTimeout:)","symbolLocation":20,"imageIndex":107},{"imageOffset":1490544,"sourceLine":204,"sourceFile":"SentryOnDemandReplay.swift","symbol":"SentryOnDemandReplay.createVideoWith(beginning:end:)","imageIndex":56,"symbolLocation":1920},{"imageOffset":1495016,"sourceFile":"\/<compiler-generated>","symbol":"@objc SentryOnDemandReplay.createVideoWith(beginning:end:)","symbolLocation":236,"imageIndex":56},{"imageOffset":767144,"sourceLine":277,"sourceFile":"SentrySessionReplayIntegration.m","symbol":"-[SentrySessionReplayIntegration resumePreviousSessionReplay:]","imageIndex":56,"symbolLocation":2280},{"imageOffset":764424,"sourceLine":177,"sourceFile":"SentrySessionReplayIntegration.m","symbol":"__108-[SentrySessionReplayIntegration setupWith:enableTouchTracker:enableViewRendererV2:enableFastViewRendering:]_block_invoke","imageIndex":56,"symbolLocation":196},{"imageOffset":1281960,"sourceFile":"\/<compiler-generated>","symbol":"thunk for @escaping @callee_unowned @convention(block) (@unowned SentryEvent) -> (@autoreleased SentryEvent?)","symbolLocation":32,"imageIndex":56},{"imageOffset":1281680,"sourceFile":"\/<compiler-generated>","symbol":"thunk for @escaping @callee_guaranteed (@guaranteed SentryEvent) -> (@owned SentryEvent?)","symbolLocation":32,"imageIndex":56},{"imageOffset":1283192,"sourceFile":"\/<compiler-generated>","symbol":"thunk for @escaping @callee_guaranteed (@in_guaranteed SentryEvent) -> (@out SentryEvent?)","symbolLocation":40,"imageIndex":56},{"imageOffset":1282736,"sourceLine":19,"sourceFile":"SentryGlobalEventProcessor.swift","symbol":"SentryGlobalEventProcessor.reportAll(_:)","imageIndex":56,"symbolLocation":516},{"imageOffset":1283352,"sourceFile":"\/<compiler-generated>","symbol":"@objc SentryGlobalEventProcessor.reportAll(_:)","symbolLocation":68,"imageIndex":56},{"imageOffset":124112,"sourceLine":947,"sourceFile":"SentryClient.m","symbol":"-[SentryClient callEventProcessors:]","imageIndex":56,"symbolLocation":124},{"imageOffset":122304,"sourceLine":881,"sourceFile":"SentryClient.m","symbol":"-[SentryClient prepareEvent:withScope:alwaysAttachStacktrace:isFatalEvent:]","imageIndex":56,"symbolLocation":7628},{"imageOffset":106024,"sourceLine":353,"sourceFile":"SentryClient.m","symbol":"-[SentryClient captureFatalEvent:withSession:withScope:]","imageIndex":56,"symbolLocation":136},{"imageOffset":502620,"sourceLine":254,"sourceFile":"SentryHub.m","symbol":"-[SentryHub captureFatalEvent:withScope:]","imageIndex":56,"symbolLocation":212},{"imageOffset":742460,"sourceLine":314,"sourceFile":"SentrySDKInternal.m","symbol":"+[SentrySDKInternal captureFatalEvent:withScope:]","imageIndex":56,"symbolLocation":120},{"imageOffset":345808,"sourceLine":102,"sourceFile":"SentryCrashReportSink.m","symbol":"-[SentryCrashReportSink handleConvertedEvent:report:sentReports:]","imageIndex":56,"symbolLocation":640},{"imageOffset":344856,"sourceLine":74,"sourceFile":"SentryCrashReportSink.m","symbol":"-[SentryCrashReportSink sendReports:onCompletion:]","imageIndex":56,"symbolLocation":508},{"imageOffset":344140,"sourceLine":61,"sourceFile":"SentryCrashReportSink.m","symbol":"__52-[SentryCrashReportSink filterReports:onCompletion:]_block_invoke","imageIndex":56,"symbolLocation":48},{"imageOffset":1157560,"sourceFile":"\/<compiler-generated>","symbol":"thunk for @escaping @callee_unowned @convention(block) () -> ()","symbolLocation":16,"imageIndex":56},{"imageOffset":1157276,"sourceFile":"\/<compiler-generated>","symbol":"thunk for @escaping @callee_guaranteed @Sendable () -> ()","symbolLocation":48,"imageIndex":56},{"imageOffset":8268,"sourceLine":30,"sourceFile":"_SentryDispatchQueueWrapperInternal.m","symbol":"__62-[_SentryDispatchQueueWrapperInternal dispatchAsyncWithBlock:]_block_invoke","imageIndex":56,"symbolLocation":56},{"imageOffset":5792,"symbol":"_dispatch_call_block_and_release","symbolLocation":24,"imageIndex":127},{"imageOffset":114328,"symbol":"_dispatch_client_callout","symbolLocation":12,"imageIndex":127},{"imageOffset":42788,"symbol":"_dispatch_lane_serial_drain","symbolLocation":984,"imageIndex":127},{"imageOffset":45544,"symbol":"_dispatch_lane_invoke","symbolLocation":396,"imageIndex":127},{"imageOffset":89792,"symbol":"_dispatch_root_queue_drain_deferred_wlh","symbolLocation":288,"imageIndex":127},{"imageOffset":87560,"symbol":"_dispatch_workloop_worker_thread","symbolLocation":692,"imageIndex":127},{"imageOffset":11304,"symbol":"_pthread_wqthread","symbolLocation":288,"imageIndex":161},{"imageOffset":6696,"symbol":"start_wqthread","symbolLocation":8,"imageIndex":161}]},{"id":836586,"name":"io.flutter.1.raster","threadState":{"x":[{"value":0},{"value":21592279046},{"value":8589934592},{"value":103366977912832},{"value":0},{"value":103366977912832},{"value":2},{"value":4294967295},{"value":0},{"value":17179869184},{"value":0},{"value":2},{"value":0},{"value":0},{"value":24067},{"value":3072},{"value":18446744073709551569},{"value":4421202772,"symbolLocation":0,"symbol":"-[NSObject dealloc]"},{"value":0},{"value":4294967295},{"value":2},{"value":103366977912832},{"value":0},{"value":103366977912832},{"value":21592279046},{"value":13881466888},{"value":8589934592},{"value":18446744073709550527},{"value":4577329152,"symbolLocation":0,"symbol":"_libkernel_string_functions"}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4577123932},"cpsr":{"value":0},"fp":{"value":13881466736},"sp":{"value":13881466656},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577053552},"far":{"value":0}},"frames":[{"imageOffset":2928,"symbol":"mach_msg2_trap","symbolLocation":8,"imageIndex":158},{"imageOffset":73308,"symbol":"mach_msg2_internal","symbolLocation":72,"imageIndex":158},{"imageOffset":35908,"symbol":"mach_msg_overwrite","symbolLocation":484,"imageIndex":158},{"imageOffset":3824,"symbol":"mach_msg","symbolLocation":20,"imageIndex":158},{"imageOffset":604096,"symbol":"__CFRunLoopServiceMachPort","symbolLocation":156,"imageIndex":99},{"imageOffset":600440,"symbol":"__CFRunLoopRun","symbolLocation":1128,"imageIndex":99},{"imageOffset":579844,"symbol":"_CFRunLoopRunSpecificWithOptions","symbolLocation":496,"imageIndex":99},{"imageOffset":651396,"symbol":"fml::MessageLoopDarwin::Run()","symbolLocation":92,"imageIndex":117},{"imageOffset":621340,"symbol":"fml::MessageLoopImpl::DoRun()","symbolLocation":44,"imageIndex":117},{"imageOffset":644908,"symbol":"std::__fl::__function::__func<fml::Thread::Thread(std::__fl::function<void (fml::Thread::ThreadConfig const&)> const&, fml::Thread::ThreadConfig const&)::$_0, std::__fl::allocator<fml::Thread::Thread(std::__fl::function<void (fml::Thread::ThreadConfig const&)> const&, fml::Thread::ThreadConfig const&)::$_0>, void ()>::operator()()","symbolLocation":184,"imageIndex":117},{"imageOffset":644080,"symbol":"fml::ThreadHandle::ThreadHandle(std::__fl::function<void ()>&&)::$_0::__invoke(void*)","symbolLocation":36,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836587,"name":"io.flutter.1.io","threadState":{"x":[{"value":268451845},{"value":21592279046},{"value":8589934592},{"value":109964047679488},{"value":0},{"value":109964047679488},{"value":2},{"value":4294967295},{"value":0},{"value":17179869184},{"value":0},{"value":2},{"value":0},{"value":0},{"value":25603},{"value":3072},{"value":18446744073709551569},{"value":4421202772,"symbolLocation":0,"symbol":"-[NSObject dealloc]"},{"value":0},{"value":4294967295},{"value":2},{"value":109964047679488},{"value":0},{"value":109964047679488},{"value":21592279046},{"value":13893672968},{"value":8589934592},{"value":18446744073709550527},{"value":4577329152,"symbolLocation":0,"symbol":"_libkernel_string_functions"}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4577123932},"cpsr":{"value":0},"fp":{"value":13893672816},"sp":{"value":13893672736},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577053552},"far":{"value":0}},"frames":[{"imageOffset":2928,"symbol":"mach_msg2_trap","symbolLocation":8,"imageIndex":158},{"imageOffset":73308,"symbol":"mach_msg2_internal","symbolLocation":72,"imageIndex":158},{"imageOffset":35908,"symbol":"mach_msg_overwrite","symbolLocation":484,"imageIndex":158},{"imageOffset":3824,"symbol":"mach_msg","symbolLocation":20,"imageIndex":158},{"imageOffset":604096,"symbol":"__CFRunLoopServiceMachPort","symbolLocation":156,"imageIndex":99},{"imageOffset":600440,"symbol":"__CFRunLoopRun","symbolLocation":1128,"imageIndex":99},{"imageOffset":579844,"symbol":"_CFRunLoopRunSpecificWithOptions","symbolLocation":496,"imageIndex":99},{"imageOffset":651396,"symbol":"fml::MessageLoopDarwin::Run()","symbolLocation":92,"imageIndex":117},{"imageOffset":621340,"symbol":"fml::MessageLoopImpl::DoRun()","symbolLocation":44,"imageIndex":117},{"imageOffset":644908,"symbol":"std::__fl::__function::__func<fml::Thread::Thread(std::__fl::function<void (fml::Thread::ThreadConfig const&)> const&, fml::Thread::ThreadConfig const&)::$_0, std::__fl::allocator<fml::Thread::Thread(std::__fl::function<void (fml::Thread::ThreadConfig const&)> const&, fml::Thread::ThreadConfig const&)::$_0>, void ()>::operator()()","symbolLocation":184,"imageIndex":117},{"imageOffset":644080,"symbol":"fml::ThreadHandle::ThreadHandle(std::__fl::function<void ()>&&)::$_0::__invoke(void*)","symbolLocation":36,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836588,"name":"io.flutter.1.profiler","threadState":{"x":[{"value":268451845},{"value":21592279046},{"value":8589934592},{"value":117660629073920},{"value":0},{"value":117660629073920},{"value":2},{"value":4294967295},{"value":0},{"value":17179869184},{"value":0},{"value":2},{"value":0},{"value":0},{"value":27395},{"value":3072},{"value":18446744073709551569},{"value":4421202772,"symbolLocation":0,"symbol":"-[NSObject dealloc]"},{"value":0},{"value":4294967295},{"value":2},{"value":117660629073920},{"value":0},{"value":117660629073920},{"value":21592279046},{"value":13910433800},{"value":8589934592},{"value":18446744073709550527},{"value":4577329152,"symbolLocation":0,"symbol":"_libkernel_string_functions"}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4577123932},"cpsr":{"value":0},"fp":{"value":13910433648},"sp":{"value":13910433568},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577053552},"far":{"value":0}},"frames":[{"imageOffset":2928,"symbol":"mach_msg2_trap","symbolLocation":8,"imageIndex":158},{"imageOffset":73308,"symbol":"mach_msg2_internal","symbolLocation":72,"imageIndex":158},{"imageOffset":35908,"symbol":"mach_msg_overwrite","symbolLocation":484,"imageIndex":158},{"imageOffset":3824,"symbol":"mach_msg","symbolLocation":20,"imageIndex":158},{"imageOffset":604096,"symbol":"__CFRunLoopServiceMachPort","symbolLocation":156,"imageIndex":99},{"imageOffset":600440,"symbol":"__CFRunLoopRun","symbolLocation":1128,"imageIndex":99},{"imageOffset":579844,"symbol":"_CFRunLoopRunSpecificWithOptions","symbolLocation":496,"imageIndex":99},{"imageOffset":651396,"symbol":"fml::MessageLoopDarwin::Run()","symbolLocation":92,"imageIndex":117},{"imageOffset":621340,"symbol":"fml::MessageLoopImpl::DoRun()","symbolLocation":44,"imageIndex":117},{"imageOffset":644908,"symbol":"std::__fl::__function::__func<fml::Thread::Thread(std::__fl::function<void (fml::Thread::ThreadConfig const&)> const&, fml::Thread::ThreadConfig const&)::$_0, std::__fl::allocator<fml::Thread::Thread(std::__fl::function<void (fml::Thread::ThreadConfig const&)> const&, fml::Thread::ThreadConfig const&)::$_0>, void ()>::operator()()","symbolLocation":184,"imageIndex":117},{"imageOffset":644080,"symbol":"fml::ThreadHandle::ThreadHandle(std::__fl::function<void ()>&&)::$_0::__invoke(void*)","symbolLocation":36,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836589,"name":"io.worker.1","threadState":{"x":[{"value":4},{"value":0},{"value":1280},{"value":0},{"value":0},{"value":160},{"value":0},{"value":0},{"value":13814427112},{"value":0},{"value":0},{"value":2},{"value":2},{"value":0},{"value":0},{"value":0},{"value":305},{"value":13898793344},{"value":0},{"value":13897033144},{"value":13897033208},{"value":13814427872},{"value":0},{"value":0},{"value":1280},{"value":1280},{"value":2304},{"value":13814427352},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578945792},"cpsr":{"value":1610612736},"fp":{"value":13814427232},"sp":{"value":13814427088},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577067052},"far":{"value":0}},"frames":[{"imageOffset":16428,"symbol":"__psynch_cvwait","symbolLocation":8,"imageIndex":158},{"imageOffset":27392,"symbol":"_pthread_cond_wait","symbolLocation":972,"imageIndex":161},{"imageOffset":458660,"symbol":"std::__fl::condition_variable::wait(std::__fl::unique_lock<std::__fl::mutex>&)","symbolLocation":24,"imageIndex":117},{"imageOffset":606912,"symbol":"fml::ConcurrentMessageLoop::WorkerMain()","symbolLocation":140,"imageIndex":117},{"imageOffset":608616,"symbol":"void* std::__fl::__thread_proxy[abi:nn210000]<std::__fl::tuple<std::__fl::unique_ptr<std::__fl::__thread_struct, std::__fl::default_delete<std::__fl::__thread_struct>>, fml::ConcurrentMessageLoop::ConcurrentMessageLoop(unsigned long)::$_0>>(void*)","symbolLocation":192,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836590,"name":"io.worker.2","threadState":{"x":[{"value":4},{"value":0},{"value":1024},{"value":0},{"value":0},{"value":160},{"value":0},{"value":0},{"value":13895118312},{"value":0},{"value":0},{"value":2},{"value":2},{"value":0},{"value":0},{"value":0},{"value":305},{"value":13898802176},{"value":0},{"value":13897033144},{"value":13897033208},{"value":13895119072},{"value":0},{"value":0},{"value":1024},{"value":1024},{"value":1536},{"value":13895118552},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578945792},"cpsr":{"value":1610612736},"fp":{"value":13895118432},"sp":{"value":13895118288},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577067052},"far":{"value":0}},"frames":[{"imageOffset":16428,"symbol":"__psynch_cvwait","symbolLocation":8,"imageIndex":158},{"imageOffset":27392,"symbol":"_pthread_cond_wait","symbolLocation":972,"imageIndex":161},{"imageOffset":458660,"symbol":"std::__fl::condition_variable::wait(std::__fl::unique_lock<std::__fl::mutex>&)","symbolLocation":24,"imageIndex":117},{"imageOffset":606912,"symbol":"fml::ConcurrentMessageLoop::WorkerMain()","symbolLocation":140,"imageIndex":117},{"imageOffset":608616,"symbol":"void* std::__fl::__thread_proxy[abi:nn210000]<std::__fl::tuple<std::__fl::unique_ptr<std::__fl::__thread_struct, std::__fl::default_delete<std::__fl::__thread_struct>>, fml::ConcurrentMessageLoop::ConcurrentMessageLoop(unsigned long)::$_0>>(void*)","symbolLocation":192,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836591,"name":"io.worker.3","threadState":{"x":[{"value":4},{"value":0},{"value":1024},{"value":0},{"value":0},{"value":160},{"value":0},{"value":0},{"value":13895691752},{"value":0},{"value":0},{"value":2},{"value":2},{"value":0},{"value":0},{"value":0},{"value":305},{"value":13898802304},{"value":0},{"value":13897033144},{"value":13897033208},{"value":13895692512},{"value":0},{"value":0},{"value":1024},{"value":1024},{"value":1792},{"value":13895691992},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578945792},"cpsr":{"value":1610612736},"fp":{"value":13895691872},"sp":{"value":13895691728},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577067052},"far":{"value":0}},"frames":[{"imageOffset":16428,"symbol":"__psynch_cvwait","symbolLocation":8,"imageIndex":158},{"imageOffset":27392,"symbol":"_pthread_cond_wait","symbolLocation":972,"imageIndex":161},{"imageOffset":458660,"symbol":"std::__fl::condition_variable::wait(std::__fl::unique_lock<std::__fl::mutex>&)","symbolLocation":24,"imageIndex":117},{"imageOffset":606912,"symbol":"fml::ConcurrentMessageLoop::WorkerMain()","symbolLocation":140,"imageIndex":117},{"imageOffset":608616,"symbol":"void* std::__fl::__thread_proxy[abi:nn210000]<std::__fl::tuple<std::__fl::unique_ptr<std::__fl::__thread_struct, std::__fl::default_delete<std::__fl::__thread_struct>>, fml::ConcurrentMessageLoop::ConcurrentMessageLoop(unsigned long)::$_0>>(void*)","symbolLocation":192,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836592,"name":"io.worker.4","threadState":{"x":[{"value":260},{"value":0},{"value":1024},{"value":0},{"value":0},{"value":160},{"value":0},{"value":0},{"value":13911010792},{"value":0},{"value":0},{"value":2},{"value":2},{"value":0},{"value":0},{"value":0},{"value":305},{"value":13898801024},{"value":0},{"value":13897033144},{"value":13897033208},{"value":13911011552},{"value":0},{"value":0},{"value":1024},{"value":1024},{"value":2048},{"value":13911011032},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578945792},"cpsr":{"value":1610612736},"fp":{"value":13911010912},"sp":{"value":13911010768},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577067052},"far":{"value":0}},"frames":[{"imageOffset":16428,"symbol":"__psynch_cvwait","symbolLocation":8,"imageIndex":158},{"imageOffset":27392,"symbol":"_pthread_cond_wait","symbolLocation":972,"imageIndex":161},{"imageOffset":458660,"symbol":"std::__fl::condition_variable::wait(std::__fl::unique_lock<std::__fl::mutex>&)","symbolLocation":24,"imageIndex":117},{"imageOffset":606912,"symbol":"fml::ConcurrentMessageLoop::WorkerMain()","symbolLocation":140,"imageIndex":117},{"imageOffset":608616,"symbol":"void* std::__fl::__thread_proxy[abi:nn210000]<std::__fl::tuple<std::__fl::unique_ptr<std::__fl::__thread_struct, std::__fl::default_delete<std::__fl::__thread_struct>>, fml::ConcurrentMessageLoop::ConcurrentMessageLoop(unsigned long)::$_0>>(void*)","symbolLocation":192,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836593,"name":"dart:io EventHandler","threadState":{"x":[{"value":4},{"value":0},{"value":0},{"value":13912108312},{"value":16},{"value":13912107272},{"value":13896720064},{"value":0},{"value":975000000},{"value":1},{"value":101756826890170380},{"value":101739232556641033},{"value":3622804914176},{"value":11},{"value":0},{"value":13834518528},{"value":363},{"value":4584462656,"symbolLocation":0,"symbol":"-[__NSCFArray objectAtIndex:]"},{"value":0},{"value":13904170368},{"value":13912107272},{"value":67108864},{"value":2147483647},{"value":274877907},{"value":4294966296},{"value":1000000},{"value":37820876},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4774454996},"cpsr":{"value":536870912},"fp":{"value":13912108912},"sp":{"value":13912107248},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577076900},"far":{"value":0}},"frames":[{"imageOffset":26276,"symbol":"kevent","symbolLocation":8,"imageIndex":158},{"imageOffset":5269204,"symbol":"dart::bin::EventHandlerImplementation::EventHandlerEntry(unsigned long)","symbolLocation":304,"imageIndex":117},{"imageOffset":5384108,"symbol":"dart::bin::ThreadStart(void*)","symbolLocation":92,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836594,"name":"DartWorker","threadState":{"x":[{"value":260},{"value":0},{"value":22784},{"value":0},{"value":0},{"value":160},{"value":5},{"value":0},{"value":22785},{"value":0},{"value":256},{"value":1099511628034},{"value":1099511628034},{"value":256},{"value":0},{"value":1099511628032},{"value":305},{"value":13898800768},{"value":0},{"value":13896959496},{"value":13904170608},{"value":1},{"value":0},{"value":5},{"value":22784},{"value":22785},{"value":23040},{"value":4802015232,"symbolLocation":5352,"symbol":"dart::Symbols::symbol_handles_"},{"value":1000}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578945836},"cpsr":{"value":2684354560},"fp":{"value":13970729536},"sp":{"value":13970729392},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577067052},"far":{"value":0}},"frames":[{"imageOffset":16428,"symbol":"__psynch_cvwait","symbolLocation":8,"imageIndex":158},{"imageOffset":27436,"symbol":"_pthread_cond_wait","symbolLocation":1016,"imageIndex":161},{"imageOffset":5701760,"symbol":"dart::ConditionVariable::WaitMicros(dart::Mutex*, long long)","symbolLocation":112,"imageIndex":117},{"imageOffset":7179652,"symbol":"dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*)","symbolLocation":512,"imageIndex":117},{"imageOffset":7180004,"symbol":"dart::ThreadPool::Worker::Main(unsigned long)","symbolLocation":116,"imageIndex":117},{"imageOffset":6857236,"symbol":"dart::ThreadStart(void*)","symbolLocation":208,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836599,"name":"DartWorker","threadState":{"x":[{"value":260},{"value":0},{"value":9984},{"value":0},{"value":0},{"value":160},{"value":5},{"value":0},{"value":9985},{"value":0},{"value":256},{"value":1099511628034},{"value":1099511628034},{"value":256},{"value":0},{"value":1099511628032},{"value":305},{"value":4584462656,"symbolLocation":0,"symbol":"-[__NSCFArray objectAtIndex:]"},{"value":0},{"value":13896965288},{"value":13904172720},{"value":1},{"value":0},{"value":5},{"value":9984},{"value":9985},{"value":10240},{"value":4802015232,"symbolLocation":5352,"symbol":"dart::Symbols::symbol_handles_"},{"value":1000}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578945836},"cpsr":{"value":2684354560},"fp":{"value":13984885312},"sp":{"value":13984885168},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577067052},"far":{"value":0}},"frames":[{"imageOffset":16428,"symbol":"__psynch_cvwait","symbolLocation":8,"imageIndex":158},{"imageOffset":27436,"symbol":"_pthread_cond_wait","symbolLocation":1016,"imageIndex":161},{"imageOffset":5701760,"symbol":"dart::ConditionVariable::WaitMicros(dart::Mutex*, long long)","symbolLocation":112,"imageIndex":117},{"imageOffset":7179652,"symbol":"dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*)","symbolLocation":512,"imageIndex":117},{"imageOffset":7180004,"symbol":"dart::ThreadPool::Worker::Main(unsigned long)","symbolLocation":116,"imageIndex":117},{"imageOffset":6857236,"symbol":"dart::ThreadStart(void*)","symbolLocation":208,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836600,"name":"DartWorker","threadState":{"x":[{"value":260},{"value":0},{"value":256},{"value":0},{"value":0},{"value":160},{"value":60},{"value":999999000},{"value":257},{"value":0},{"value":0},{"value":2},{"value":2},{"value":0},{"value":0},{"value":0},{"value":305},{"value":13897498752},{"value":0},{"value":13896962952},{"value":13904173008},{"value":1},{"value":999999000},{"value":60},{"value":256},{"value":257},{"value":512},{"value":4802015232,"symbolLocation":5352,"symbol":"dart::Symbols::symbol_handles_"},{"value":1000}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578945836},"cpsr":{"value":2684354560},"fp":{"value":13985982960},"sp":{"value":13985982816},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577067052},"far":{"value":0}},"frames":[{"imageOffset":16428,"symbol":"__psynch_cvwait","symbolLocation":8,"imageIndex":158},{"imageOffset":27436,"symbol":"_pthread_cond_wait","symbolLocation":1016,"imageIndex":161},{"imageOffset":5701760,"symbol":"dart::ConditionVariable::WaitMicros(dart::Mutex*, long long)","symbolLocation":112,"imageIndex":117},{"imageOffset":6094816,"symbol":"dart::MutatorThreadPool::OnEnterIdleLocked(dart::MutexLocker*, dart::ThreadPool::Worker*)","symbolLocation":156,"imageIndex":117},{"imageOffset":7179264,"symbol":"dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*)","symbolLocation":124,"imageIndex":117},{"imageOffset":7180004,"symbol":"dart::ThreadPool::Worker::Main(unsigned long)","symbolLocation":116,"imageIndex":117},{"imageOffset":6857236,"symbol":"dart::ThreadStart(void*)","symbolLocation":208,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836638,"frames":[],"threadState":{"x":[{"value":13989261312},{"value":40195},{"value":13988724736},{"value":0},{"value":409604},{"value":18446744073709551615},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":0},"cpsr":{"value":0},"fp":{"value":0},"sp":{"value":13989261312},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4578925088},"far":{"value":0}}},{"id":836639,"threadState":{"x":[{"value":13989828480},{"value":13830262928,"symbolLocation":720,"symbol":"type_layout_string 11WeatherCore25NamedNetworkConfigurationV"},{"value":0},{"value":0},{"value":4644633688,"symbolLocation":0,"symbol":"protocol descriptor for CustomStringConvertible"},{"value":13989829120},{"value":1},{"value":0},{"value":13146099384},{"value":573065},{"value":13989828318},{"value":0},{"value":1},{"value":0},{"value":4644794896,"symbolLocation":8,"symbol":"type metadata for Any"},{"value":4644633772,"symbolLocation":0,"symbol":"protocol descriptor for CustomDebugStringConvertible"},{"value":4576864868,"symbolLocation":0,"symbol":"os_signpost_enabled"},{"value":18446744072367376383},{"value":0},{"value":13883572360},{"value":13989828480},{"value":13989828320},{"value":13830631704},{"value":13989828328},{"value":13989828319},{"value":13989828304},{"value":13989828336},{"value":13830631700},{"value":13830638456}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4640189628},"cpsr":{"value":2147483648},"fp":{"value":13989828144},"sp":{"value":13989828016},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4640194180},"far":{"value":0}},"queue":"io.sentry.session-replay.asset-worker","frames":[{"imageOffset":409220,"symbol":"swift_conformsToProtocolMaybeInstantiateSuperclasses(swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolDescriptor<swift::InProcess> const*, bool)::$_2::operator()((anonymous namespace)::ConformanceSection const&) const::'lambda'(swift::TargetProtocolConformanceDescriptor<swift::InProcess> const&)::operator()(swift::TargetProtocolConformanceDescriptor<swift::InProcess> const&) const","symbolLocation":64,"imageIndex":100},{"imageOffset":404668,"symbol":"swift_conformsToProtocolMaybeInstantiateSuperclasses(swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolDescriptor<swift::InProcess> const*, bool)","symbolLocation":3292,"imageIndex":100},{"imageOffset":396080,"symbol":"swift_conformsToProtocolWithExecutionContext","symbolLocation":68,"imageIndex":100},{"imageOffset":57712,"symbol":"swift::_conformsToProtocol(swift::OpaqueValue const*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolDescriptorRef<swift::InProcess>, swift::TargetWitnessTable<swift::InProcess> const**, swift::ConformanceExecutionContext*)","symbolLocation":48,"imageIndex":100},{"imageOffset":58032,"symbol":"swift::_conformsToProtocolInContext(swift::OpaqueValue const*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetProtocolDescriptorRef<swift::InProcess>, swift::TargetWitnessTable<swift::InProcess> const**, bool)","symbolLocation":36,"imageIndex":100},{"imageOffset":88120,"symbol":"_conformsToProtocols(swift::OpaqueValue const*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetExistentialTypeMetadata<swift::InProcess> const*, swift::TargetWitnessTable<swift::InProcess> const**, bool)","symbolLocation":172,"imageIndex":100},{"imageOffset":84084,"symbol":"tryCastToConstrainedOpaqueExistential(swift::OpaqueValue*, swift::TargetMetadata<swift::InProcess> const*, swift::OpaqueValue*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetMetadata<swift::InProcess> const*&, swift::TargetMetadata<swift::InProcess> const*&, bool, bool, bool)","symbolLocation":56,"imageIndex":100},{"imageOffset":79356,"symbol":"tryCast(swift::OpaqueValue*, swift::TargetMetadata<swift::InProcess> const*, swift::OpaqueValue*, swift::TargetMetadata<swift::InProcess> const*, swift::TargetMetadata<swift::InProcess> const*&, swift::TargetMetadata<swift::InProcess> const*&, bool, bool, bool)","symbolLocation":796,"imageIndex":100},{"imageOffset":77916,"symbol":"swift_dynamicCast","symbolLocation":92,"imageIndex":100},{"imageOffset":1620556,"symbol":"_debugPrint_unlocked<A, B>(_:_:)","symbolLocation":264,"imageIndex":100},{"imageOffset":2240580,"symbol":"_adHocPrint_unlocked<A, B>(_:_:_:isDebugPrint:)","symbolLocation":1292,"imageIndex":100},{"imageOffset":1618932,"symbol":"_print_unlocked<A, B>(_:_:)","symbolLocation":1032,"imageIndex":100},{"imageOffset":1510388,"sourceLine":33,"sourceFile":"SentryPixelBuffer.swift","symbol":"SentryPixelBuffer.append(image:presentationTime:)","imageIndex":56,"symbolLocation":280},{"imageOffset":1512136,"sourceFile":"\/<compiler-generated>","symbol":"protocol witness for SentryAppendablePixelBuffer.append(image:presentationTime:) in conformance SentryPixelBuffer","symbolLocation":80,"imageIndex":56},{"imageOffset":2123596,"sourceLine":87,"sourceFile":"SentryVideoFrameProcessor.swift","symbol":"SentryVideoFrameProcessor.processFrames(videoWriterInput:onCompletion:)","imageIndex":56,"symbolLocation":1844},{"imageOffset":1500184,"sourceLine":283,"sourceFile":"SentryOnDemandReplay.swift","symbol":"closure #1 in SentryOnDemandReplay.renderVideo(with:from:at:completion:)","imageIndex":56,"symbolLocation":92},{"imageOffset":1157276,"sourceFile":"\/<compiler-generated>","symbol":"thunk for @escaping @callee_guaranteed @Sendable () -> ()","symbolLocation":48,"imageIndex":56},{"imageOffset":758160,"symbol":"-[AVAssetWriterInputMediaDataRequester requestMediaDataIfNecessary]","symbolLocation":60,"imageIndex":387},{"imageOffset":5792,"symbol":"_dispatch_call_block_and_release","symbolLocation":24,"imageIndex":127},{"imageOffset":114328,"symbol":"_dispatch_client_callout","symbolLocation":12,"imageIndex":127},{"imageOffset":42788,"symbol":"_dispatch_lane_serial_drain","symbolLocation":984,"imageIndex":127},{"imageOffset":45544,"symbol":"_dispatch_lane_invoke","symbolLocation":396,"imageIndex":127},{"imageOffset":89792,"symbol":"_dispatch_root_queue_drain_deferred_wlh","symbolLocation":288,"imageIndex":127},{"imageOffset":87560,"symbol":"_dispatch_workloop_worker_thread","symbolLocation":692,"imageIndex":127},{"imageOffset":11304,"symbol":"_pthread_wqthread","symbolLocation":288,"imageIndex":161},{"imageOffset":6696,"symbol":"start_wqthread","symbolLocation":8,"imageIndex":161}]},{"id":836640,"frames":[],"threadState":{"x":[{"value":13990408192},{"value":37891},{"value":13989871616},{"value":0},{"value":409604},{"value":18446744073709551615},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":0},"cpsr":{"value":0},"fp":{"value":0},"sp":{"value":13990408192},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4578925088},"far":{"value":0}}},{"id":836641,"frames":[],"threadState":{"x":[{"value":13990981632},{"value":39683},{"value":13990445056},{"value":0},{"value":409604},{"value":18446744073709551615},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":0},"cpsr":{"value":0},"fp":{"value":0},"sp":{"value":13990981632},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4578925088},"far":{"value":0}}},{"id":836642,"frames":[],"threadState":{"x":[{"value":13991555072},{"value":38147},{"value":13991018496},{"value":0},{"value":409604},{"value":18446744073709551615},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":0},"cpsr":{"value":0},"fp":{"value":0},"sp":{"value":13991555072},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4578925088},"far":{"value":0}}},{"id":836655,"name":"DartWorker","threadState":{"x":[{"value":260},{"value":0},{"value":7680},{"value":0},{"value":0},{"value":160},{"value":2},{"value":797945000},{"value":7681},{"value":0},{"value":256},{"value":1099511628034},{"value":1099511628034},{"value":256},{"value":0},{"value":1099511628032},{"value":305},{"value":13899659520},{"value":0},{"value":13896959496},{"value":13907706768},{"value":1},{"value":797945000},{"value":2},{"value":7680},{"value":7681},{"value":7936},{"value":4802015232,"symbolLocation":5352,"symbol":"dart::Symbols::symbol_handles_"},{"value":1000}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578945836},"cpsr":{"value":2684354560},"fp":{"value":14156884544},"sp":{"value":14156884400},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577067052},"far":{"value":0}},"frames":[{"imageOffset":16428,"symbol":"__psynch_cvwait","symbolLocation":8,"imageIndex":158},{"imageOffset":27436,"symbol":"_pthread_cond_wait","symbolLocation":1016,"imageIndex":161},{"imageOffset":5701760,"symbol":"dart::ConditionVariable::WaitMicros(dart::Mutex*, long long)","symbolLocation":112,"imageIndex":117},{"imageOffset":7179652,"symbol":"dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*)","symbolLocation":512,"imageIndex":117},{"imageOffset":7180004,"symbol":"dart::ThreadPool::Worker::Main(unsigned long)","symbolLocation":116,"imageIndex":117},{"imageOffset":6857236,"symbol":"dart::ThreadStart(void*)","symbolLocation":208,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836657,"name":"DartWorker","threadState":{"x":[{"value":260},{"value":0},{"value":1280},{"value":0},{"value":0},{"value":160},{"value":5},{"value":0},{"value":1281},{"value":0},{"value":256},{"value":1099511628034},{"value":1099511628034},{"value":256},{"value":0},{"value":1099511628032},{"value":305},{"value":13908133888},{"value":0},{"value":13896959496},{"value":13907710224},{"value":1},{"value":0},{"value":5},{"value":1280},{"value":1281},{"value":1536},{"value":4802015232,"symbolLocation":5352,"symbol":"dart::Symbols::symbol_handles_"},{"value":1000}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578945836},"cpsr":{"value":2684354560},"fp":{"value":14275340864},"sp":{"value":14275340720},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577067052},"far":{"value":0}},"frames":[{"imageOffset":16428,"symbol":"__psynch_cvwait","symbolLocation":8,"imageIndex":158},{"imageOffset":27436,"symbol":"_pthread_cond_wait","symbolLocation":1016,"imageIndex":161},{"imageOffset":5701760,"symbol":"dart::ConditionVariable::WaitMicros(dart::Mutex*, long long)","symbolLocation":112,"imageIndex":117},{"imageOffset":7179652,"symbol":"dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*)","symbolLocation":512,"imageIndex":117},{"imageOffset":7180004,"symbol":"dart::ThreadPool::Worker::Main(unsigned long)","symbolLocation":116,"imageIndex":117},{"imageOffset":6857236,"symbol":"dart::ThreadStart(void*)","symbolLocation":208,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836658,"name":"DartWorker","threadState":{"x":[{"value":260},{"value":0},{"value":8960},{"value":0},{"value":0},{"value":160},{"value":5},{"value":0},{"value":8961},{"value":0},{"value":256},{"value":1099511628034},{"value":1099511628034},{"value":256},{"value":0},{"value":1099511628032},{"value":305},{"value":13908133760},{"value":0},{"value":13896959496},{"value":13907710512},{"value":1},{"value":0},{"value":5},{"value":8960},{"value":8961},{"value":9216},{"value":4802015232,"symbolLocation":5352,"symbol":"dart::Symbols::symbol_handles_"},{"value":1000}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578945836},"cpsr":{"value":2684354560},"fp":{"value":14276438592},"sp":{"value":14276438448},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577067052},"far":{"value":0}},"frames":[{"imageOffset":16428,"symbol":"__psynch_cvwait","symbolLocation":8,"imageIndex":158},{"imageOffset":27436,"symbol":"_pthread_cond_wait","symbolLocation":1016,"imageIndex":161},{"imageOffset":5701760,"symbol":"dart::ConditionVariable::WaitMicros(dart::Mutex*, long long)","symbolLocation":112,"imageIndex":117},{"imageOffset":7179652,"symbol":"dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*)","symbolLocation":512,"imageIndex":117},{"imageOffset":7180004,"symbol":"dart::ThreadPool::Worker::Main(unsigned long)","symbolLocation":116,"imageIndex":117},{"imageOffset":6857236,"symbol":"dart::ThreadStart(void*)","symbolLocation":208,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836677,"name":"com.apple.NSURLConnectionLoader","threadState":{"x":[{"value":268451845},{"value":21592279046},{"value":8589934592},{"value":67426691579904},{"value":0},{"value":67426691579904},{"value":2},{"value":4294967295},{"value":0},{"value":17179869184},{"value":0},{"value":2},{"value":0},{"value":0},{"value":15699},{"value":3072},{"value":18446744073709551569},{"value":4421202772,"symbolLocation":0,"symbol":"-[NSObject dealloc]"},{"value":0},{"value":4294967295},{"value":2},{"value":67426691579904},{"value":0},{"value":67426691579904},{"value":21592279046},{"value":14316756296},{"value":8589934592},{"value":18446744073709550527},{"value":4577329152,"symbolLocation":0,"symbol":"_libkernel_string_functions"}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4577123932},"cpsr":{"value":0},"fp":{"value":14316756144},"sp":{"value":14316756064},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577053552},"far":{"value":0}},"frames":[{"imageOffset":2928,"symbol":"mach_msg2_trap","symbolLocation":8,"imageIndex":158},{"imageOffset":73308,"symbol":"mach_msg2_internal","symbolLocation":72,"imageIndex":158},{"imageOffset":35908,"symbol":"mach_msg_overwrite","symbolLocation":484,"imageIndex":158},{"imageOffset":3824,"symbol":"mach_msg","symbolLocation":20,"imageIndex":158},{"imageOffset":604096,"symbol":"__CFRunLoopServiceMachPort","symbolLocation":156,"imageIndex":99},{"imageOffset":600440,"symbol":"__CFRunLoopRun","symbolLocation":1128,"imageIndex":99},{"imageOffset":579844,"symbol":"_CFRunLoopRunSpecificWithOptions","symbolLocation":496,"imageIndex":99},{"imageOffset":2101280,"symbol":"+[__CFN_CoreSchedulingSetRunnable _run:]","symbolLocation":368,"imageIndex":164},{"imageOffset":9522908,"symbol":"__NSThread__start__","symbolLocation":716,"imageIndex":31},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836678,"frames":[{"imageOffset":15964,"symbol":"__semwait_signal","symbolLocation":8,"imageIndex":158},{"imageOffset":461708,"symbol":"nanosleep","symbolLocation":216,"imageIndex":133},{"imageOffset":461192,"symbol":"sleep","symbolLocation":48,"imageIndex":133},{"imageOffset":165496,"sourceLine":146,"sourceFile":"SentryCrashCachedData.c","symbol":"monitorCachedData","imageIndex":56,"symbolLocation":128},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}],"threadState":{"x":[{"value":4},{"value":0},{"value":1},{"value":1},{"value":1},{"value":0},{"value":52},{"value":0},{"value":4575006012,"symbolLocation":0,"symbol":"clock_sem"},{"value":16387},{"value":17},{"value":211130123301696},{"value":25769803776},{"value":48},{"value":0},{"value":13834518528},{"value":334},{"value":18446744072367376383},{"value":0},{"value":14339305328},{"value":14339305344},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4574907276},"cpsr":{"value":1610612736},"fp":{"value":14339305312},"sp":{"value":14339305264},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577066588},"far":{"value":0}}},{"id":836679,"name":"SentryCrash Exception Handler (Secondary)","threadState":{"x":[{"value":0},{"value":8589934595},{"value":103079220499},{"value":255099582594051},{"value":15483357102080},{"value":255099582545920},{"value":44},{"value":0},{"value":4577259520},{"value":4577329160,"symbolLocation":0,"symbol":"_current_pid"},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":18446744073709551569},{"value":0},{"value":0},{"value":0},{"value":44},{"value":255099582545920},{"value":15483357102080},{"value":255099582594051},{"value":8589934595},{"value":14339876800},{"value":103079220499},{"value":18446744073709550527},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4577123932},"cpsr":{"value":2147483648},"fp":{"value":14339876784},"sp":{"value":14339876704},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577053552},"far":{"value":0}},"frames":[{"imageOffset":2928,"symbol":"mach_msg2_trap","symbolLocation":8,"imageIndex":158},{"imageOffset":73308,"symbol":"mach_msg2_internal","symbolLocation":72,"imageIndex":158},{"imageOffset":191720,"symbol":"thread_suspend","symbolLocation":104,"imageIndex":158},{"imageOffset":249952,"sourceLine":305,"sourceFile":"SentryCrashMonitor_MachException.c","symbol":"handleExceptions","imageIndex":56,"symbolLocation":132},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836680,"name":"SentryCrash Exception Handler (Primary)","threadState":{"x":[{"value":268451845},{"value":17179869186},{"value":0},{"value":0},{"value":0},{"value":256199094173696},{"value":580},{"value":0},{"value":0},{"value":17179869184},{"value":580},{"value":0},{"value":0},{"value":0},{"value":59651},{"value":580},{"value":18446744073709551569},{"value":0},{"value":0},{"value":0},{"value":580},{"value":256199094173696},{"value":0},{"value":0},{"value":17179869186},{"value":14340451684},{"value":0},{"value":18446744073709550527},{"value":4577329152,"symbolLocation":0,"symbol":"_libkernel_string_functions"}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4577123932},"cpsr":{"value":0},"fp":{"value":14340449984},"sp":{"value":14340449904},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577053552},"far":{"value":0}},"frames":[{"imageOffset":2928,"symbol":"mach_msg2_trap","symbolLocation":8,"imageIndex":158},{"imageOffset":73308,"symbol":"mach_msg2_internal","symbolLocation":72,"imageIndex":158},{"imageOffset":35908,"symbol":"mach_msg_overwrite","symbolLocation":484,"imageIndex":158},{"imageOffset":3824,"symbol":"mach_msg","symbolLocation":20,"imageIndex":158},{"imageOffset":250008,"sourceLine":313,"sourceFile":"SentryCrashMonitor_MachException.c","symbol":"handleExceptions","imageIndex":56,"symbolLocation":188},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836681,"name":"io.sentry.app-hang-tracker","threadState":{"x":[{"value":4},{"value":0},{"value":1},{"value":1},{"value":0},{"value":400000000},{"value":0},{"value":0},{"value":4575006012,"symbolLocation":0,"symbol":"clock_sem"},{"value":3},{"value":17},{"value":7},{"value":2},{"value":14320712080},{"value":4492093640,"symbolLocation":0,"symbol":"OBJC_METACLASS_$_NSThread"},{"value":4492093640,"symbolLocation":0,"symbol":"OBJC_METACLASS_$_NSThread"},{"value":334},{"value":4486313980,"symbolLocation":0,"symbol":"+[NSThread sleepForTimeInterval:]"},{"value":0},{"value":0},{"value":14341024384},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4574907276},"cpsr":{"value":2684354560},"fp":{"value":14341024336},"sp":{"value":14341024288},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577066588},"far":{"value":0}},"frames":[{"imageOffset":15964,"symbol":"__semwait_signal","symbolLocation":8,"imageIndex":158},{"imageOffset":461708,"symbol":"nanosleep","symbolLocation":216,"imageIndex":133},{"imageOffset":9517200,"symbol":"+[NSThread sleepForTimeInterval:]","symbolLocation":148,"imageIndex":31},{"imageOffset":1815144,"sourceLine":3,"sourceFile":"SentryThreadWrapper.swift","symbol":"SentryThreadWrapper.sleep(forTimeInterval:)","imageIndex":56,"symbolLocation":56},{"imageOffset":1815208,"sourceFile":"\/<compiler-generated>","symbol":"@objc SentryThreadWrapper.sleep(forTimeInterval:)","symbolLocation":52,"imageIndex":56},{"imageOffset":21732,"sourceLine":108,"sourceFile":"SentryANRTrackerV1.m","symbol":"-[SentryANRTrackerV1 detectANRs]","imageIndex":56,"symbolLocation":1196},{"imageOffset":9522908,"symbol":"__NSThread__start__","symbolLocation":716,"imageIndex":31},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836689,"name":"com.apple.coremedia.mediaprocessor.videocompression","threadState":{"x":[{"value":260},{"value":0},{"value":0},{"value":0},{"value":0},{"value":65704},{"value":0},{"value":0},{"value":14416899400},{"value":0},{"value":0},{"value":2},{"value":2},{"value":0},{"value":0},{"value":0},{"value":305},{"value":4421202772,"symbolLocation":0,"symbol":"-[NSObject dealloc]"},{"value":0},{"value":14323222400},{"value":13896877480},{"value":14416900320},{"value":0},{"value":0},{"value":0},{"value":1},{"value":256},{"value":0},{"value":0}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578945792},"cpsr":{"value":1610612736},"fp":{"value":14416899520},"sp":{"value":14416899376},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577067052},"far":{"value":0}},"frames":[{"imageOffset":16428,"symbol":"__psynch_cvwait","symbolLocation":8,"imageIndex":158},{"imageOffset":27392,"symbol":"_pthread_cond_wait","symbolLocation":972,"imageIndex":161},{"imageOffset":297952,"symbol":"WaitOnCondition","symbolLocation":68,"imageIndex":260},{"imageOffset":905816,"symbol":"FigSemaphoreWaitRelative","symbolLocation":136,"imageIndex":260},{"imageOffset":1986292,"symbol":"activitySchedulerOnThread","symbolLocation":92,"imageIndex":374},{"imageOffset":300724,"symbol":"figThreadMain","symbolLocation":220,"imageIndex":260},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836697,"name":"io.sentry.SamplingProfiler","threadState":{"x":[{"value":0},{"value":17179869186},{"value":4608},{"value":241956982620160},{"value":13422232361500672},{"value":241956982620160},{"value":512},{"value":0},{"value":0},{"value":17179869184},{"value":512},{"value":0},{"value":3125107},{"value":0},{"value":56335},{"value":512},{"value":18446744073709551569},{"value":4421202772,"symbolLocation":0,"symbol":"-[NSObject dealloc]"},{"value":0},{"value":0},{"value":512},{"value":241956982620160},{"value":13422232361500672},{"value":241956982620160},{"value":17179869186},{"value":13896990208},{"value":4608},{"value":18446744073709550527},{"value":4577329152,"symbolLocation":0,"symbol":"_libkernel_string_functions"}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4577123932},"cpsr":{"value":0},"fp":{"value":14441541024},"sp":{"value":14441540944},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577053552},"far":{"value":0}},"frames":[{"imageOffset":2928,"symbol":"mach_msg2_trap","symbolLocation":8,"imageIndex":158},{"imageOffset":73308,"symbol":"mach_msg2_internal","symbolLocation":72,"imageIndex":158},{"imageOffset":35908,"symbol":"mach_msg_overwrite","symbolLocation":484,"imageIndex":158},{"imageOffset":3824,"symbol":"mach_msg","symbolLocation":20,"imageIndex":158},{"imageOffset":704432,"sourceLine":56,"sourceFile":"SentrySamplingProfiler.cpp","symbol":"sentry::profiling::(anonymous namespace)::samplingThreadMain(void*)","imageIndex":56,"symbolLocation":380},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836700,"name":"DartWorker","threadState":{"x":[{"value":260},{"value":0},{"value":512},{"value":0},{"value":0},{"value":160},{"value":4},{"value":222072000},{"value":513},{"value":0},{"value":256},{"value":1099511628034},{"value":1099511628034},{"value":256},{"value":0},{"value":1099511628032},{"value":305},{"value":4584462656,"symbolLocation":0,"symbol":"-[__NSCFArray objectAtIndex:]"},{"value":0},{"value":13896965288},{"value":14391971824},{"value":1},{"value":222072000},{"value":4},{"value":512},{"value":513},{"value":768},{"value":4802015232,"symbolLocation":5352,"symbol":"dart::Symbols::symbol_handles_"},{"value":1000}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578945836},"cpsr":{"value":2684354560},"fp":{"value":14460414528},"sp":{"value":14460414384},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577067052},"far":{"value":0}},"frames":[{"imageOffset":16428,"symbol":"__psynch_cvwait","symbolLocation":8,"imageIndex":158},{"imageOffset":27436,"symbol":"_pthread_cond_wait","symbolLocation":1016,"imageIndex":161},{"imageOffset":5701760,"symbol":"dart::ConditionVariable::WaitMicros(dart::Mutex*, long long)","symbolLocation":112,"imageIndex":117},{"imageOffset":7179652,"symbol":"dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*)","symbolLocation":512,"imageIndex":117},{"imageOffset":7180004,"symbol":"dart::ThreadPool::Worker::Main(unsigned long)","symbolLocation":116,"imageIndex":117},{"imageOffset":6857236,"symbol":"dart::ThreadStart(void*)","symbolLocation":208,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]},{"id":836727,"name":"DartWorker","threadState":{"x":[{"value":260},{"value":0},{"value":256},{"value":0},{"value":0},{"value":160},{"value":5},{"value":0},{"value":257},{"value":0},{"value":0},{"value":2},{"value":2},{"value":0},{"value":0},{"value":0},{"value":305},{"value":4421202772,"symbolLocation":0,"symbol":"-[NSObject dealloc]"},{"value":0},{"value":13907670568},{"value":14392723952},{"value":1},{"value":0},{"value":5},{"value":256},{"value":257},{"value":512},{"value":4802015232,"symbolLocation":5352,"symbol":"dart::Symbols::symbol_handles_"},{"value":1000}],"flavor":"ARM_THREAD_STATE64","lr":{"value":4578945836},"cpsr":{"value":2684354560},"fp":{"value":14473669184},"sp":{"value":14473669040},"esr":{"value":1442840704,"description":"(Syscall)"},"pc":{"value":4577067052},"far":{"value":0}},"frames":[{"imageOffset":16428,"symbol":"__psynch_cvwait","symbolLocation":8,"imageIndex":158},{"imageOffset":27436,"symbol":"_pthread_cond_wait","symbolLocation":1016,"imageIndex":161},{"imageOffset":5701760,"symbol":"dart::ConditionVariable::WaitMicros(dart::Mutex*, long long)","symbolLocation":112,"imageIndex":117},{"imageOffset":7179652,"symbol":"dart::ThreadPool::WorkerLoop(dart::ThreadPool::Worker*)","symbolLocation":512,"imageIndex":117},{"imageOffset":7180004,"symbol":"dart::ThreadPool::Worker::Main(unsigned long)","symbolLocation":116,"imageIndex":117},{"imageOffset":6857236,"symbol":"dart::ThreadStart(void*)","symbolLocation":208,"imageIndex":117},{"imageOffset":26172,"symbol":"_pthread_start","symbolLocation":104,"imageIndex":161},{"imageOffset":6708,"symbol":"thread_start","symbolLocation":8,"imageIndex":161}]}],
  "usedImages" : [
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4307320832,
    "CFBundleShortVersionString" : "1.0.2",
    "CFBundleIdentifier" : "com.nzubia.global",
    "size" : 16384,
    "uuid" : "127542f1-3e8e-3c73-bb0a-a67322e7493f",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Runner",
    "name" : "Runner",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4309925888,
    "size" : 327680,
    "uuid" : "ba544d9a-46ab-3c59-a00f-aba1479d2079",
    "path" : "\/Volumes\/VOLUME\/*\/dyld_sim",
    "name" : "dyld_sim"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4331372544,
    "size" : 10780672,
    "uuid" : "188ac848-158e-3958-80a2-569d9b1cefce",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Runner.debug.dylib",
    "name" : "Runner.debug.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4307484672,
    "size" : 16384,
    "uuid" : "35bca977-0843-3658-ab06-30cde1ba559e",
    "path" : "\/Volumes\/VOLUME\/*\/libSystem.B.dylib",
    "name" : "libSystem.B.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4311777280,
    "size" : 573440,
    "uuid" : "fd646c4c-99c5-3828-8199-3a66a48ff1a1",
    "path" : "\/Volumes\/VOLUME\/*\/libc++.1.dylib",
    "name" : "libc++.1.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4314906624,
    "size" : 1736704,
    "uuid" : "af1b9a79-62ce-378f-a26f-7010b58d32e7",
    "path" : "\/Volumes\/VOLUME\/*\/libsqlite3.dylib",
    "name" : "libsqlite3.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4307681280,
    "size" : 65536,
    "uuid" : "95c9d6e9-9db3-3036-9573-fd45580f28fb",
    "path" : "\/Volumes\/VOLUME\/*\/libz.1.dylib",
    "name" : "libz.1.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4307566592,
    "CFBundleShortVersionString" : "2.0",
    "CFBundleIdentifier" : "com.apple.avfoundation",
    "size" : 16384,
    "uuid" : "0ff6234d-03bc-33b2-9b31-ba9d1a7fbbc9",
    "path" : "\/Volumes\/VOLUME\/*\/AVFoundation.framework\/AVFoundation",
    "name" : "AVFoundation",
    "CFBundleVersion" : "2420.7.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4323508224,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AVKit",
    "size" : 3162112,
    "uuid" : "7c33496a-7cb0-3fce-aa91-d4332760e705",
    "path" : "\/Volumes\/VOLUME\/*\/AVKit.framework\/AVKit",
    "name" : "AVKit",
    "CFBundleVersion" : "1330.6.1.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4307632128,
    "CFBundleShortVersionString" : "1.11",
    "CFBundleIdentifier" : "com.apple.Accelerate",
    "size" : 16384,
    "uuid" : "676b8a16-2fca-3aeb-877b-974bf500d52a",
    "path" : "\/Volumes\/VOLUME\/*\/Accelerate.framework\/Accelerate",
    "name" : "Accelerate",
    "CFBundleVersion" : "Accelerate 1.11"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4352147456,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.contacts",
    "size" : 2506752,
    "uuid" : "3129802c-e5c5-3035-a77a-647bbaa46d4e",
    "path" : "\/Volumes\/VOLUME\/*\/Contacts.framework\/Contacts",
    "name" : "Contacts",
    "CFBundleVersion" : "3804.600.21"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4357832704,
    "CFBundleShortVersionString" : "120",
    "CFBundleIdentifier" : "com.apple.CoreData",
    "size" : 3653632,
    "uuid" : "e932c246-1408-30cd-8df0-f6a8edf2e39c",
    "path" : "\/Volumes\/VOLUME\/*\/CoreData.framework\/CoreData",
    "name" : "CoreData",
    "CFBundleVersion" : "1526"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4374200320,
    "CFBundleShortVersionString" : "2.0",
    "CFBundleIdentifier" : "com.apple.CoreGraphics",
    "size" : 7372800,
    "uuid" : "faa5a64f-fc68-3944-9052-d412e88b8c43",
    "path" : "\/Volumes\/VOLUME\/*\/CoreGraphics.framework\/CoreGraphics",
    "name" : "CoreGraphics",
    "CFBundleVersion" : "1965.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4384063488,
    "CFBundleShortVersionString" : "19.0.0",
    "CFBundleIdentifier" : "com.apple.CoreImage",
    "size" : 4833280,
    "uuid" : "cb5d4257-a9da-3c24-a892-4b53c6c04279",
    "path" : "\/Volumes\/VOLUME\/*\/CoreImage.framework\/CoreImage",
    "name" : "CoreImage",
    "CFBundleVersion" : "1592.120.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4364386304,
    "CFBundleShortVersionString" : "3075.0.8",
    "CFBundleIdentifier" : "com.apple.corelocation",
    "size" : 2818048,
    "uuid" : "438b9ca3-9602-3367-90e2-8a0d745cc6c7",
    "path" : "\/Volumes\/VOLUME\/*\/CoreLocation.framework\/CoreLocation",
    "name" : "CoreLocation",
    "CFBundleVersion" : "3075.0.8"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4368089088,
    "CFBundleShortVersionString" : "113",
    "CFBundleIdentifier" : "com.apple.CoreTelephony",
    "size" : 2392064,
    "uuid" : "5cb798f6-345a-319a-a808-85db8b76c949",
    "path" : "\/Volumes\/VOLUME\/*\/CoreTelephony.framework\/CoreTelephony",
    "name" : "CoreTelephony",
    "CFBundleVersion" : "13187.6"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4392255488,
    "CFBundleShortVersionString" : "877.4.0.7",
    "CFBundleIdentifier" : "com.apple.CoreText",
    "size" : 2031616,
    "uuid" : "384d2572-6e61-33b4-8cbc-fffcb002a1d2",
    "path" : "\/Volumes\/VOLUME\/*\/CoreText.framework\/CoreText",
    "name" : "CoreText",
    "CFBundleVersion" : "877.4.0.7"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4316938240,
    "CFBundleShortVersionString" : "4.3.9",
    "CFBundleIdentifier" : "org.cocoapods.DKImagePickerController",
    "size" : 622592,
    "uuid" : "8c93dbe0-22f9-3d84-8704-473c0ac1917b",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/DKImagePickerController.framework\/DKImagePickerController",
    "name" : "DKImagePickerController",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4318511104,
    "CFBundleShortVersionString" : "0.0.19",
    "CFBundleIdentifier" : "org.cocoapods.DKPhotoGallery",
    "size" : 540672,
    "uuid" : "18bd689d-4815-34ca-b8b6-05c3cc64153f",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/DKPhotoGallery.framework\/DKPhotoGallery",
    "name" : "DKPhotoGallery",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4309516288,
    "CFBundleShortVersionString" : "2.4.0",
    "CFBundleIdentifier" : "org.cocoapods.FBLPromises",
    "size" : 81920,
    "uuid" : "7e54145f-73ad-358c-bb1f-55572c172ae9",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/FBLPromises.framework\/FBLPromises",
    "name" : "FBLPromises",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4307894272,
    "CFBundleShortVersionString" : "12.13.0",
    "CFBundleIdentifier" : "org.cocoapods.FirebaseAppCheckInterop",
    "size" : 16384,
    "uuid" : "430df71a-76b6-3c75-9690-dd326d50d0d5",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/FirebaseAppCheckInterop.framework\/FirebaseAppCheckInterop",
    "name" : "FirebaseAppCheckInterop",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4399562752,
    "CFBundleShortVersionString" : "12.13.0",
    "CFBundleIdentifier" : "org.cocoapods.FirebaseAuth",
    "size" : 1638400,
    "uuid" : "4e4532ba-2813-38b4-8327-634c7541f233",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/FirebaseAuth.framework\/FirebaseAuth",
    "name" : "FirebaseAuth",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4309286912,
    "CFBundleShortVersionString" : "12.13.0",
    "CFBundleIdentifier" : "org.cocoapods.FirebaseAuthInterop",
    "size" : 16384,
    "uuid" : "2e71cb4c-8711-382c-ac74-f36e177feea6",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/FirebaseAuthInterop.framework\/FirebaseAuthInterop",
    "name" : "FirebaseAuthInterop",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4310925312,
    "CFBundleShortVersionString" : "12.13.0",
    "CFBundleIdentifier" : "org.cocoapods.FirebaseCore",
    "size" : 81920,
    "uuid" : "77072767-33a0-3a92-b6b3-441cc7692877",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/FirebaseCore.framework\/FirebaseCore",
    "name" : "FirebaseCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4309368832,
    "CFBundleShortVersionString" : "12.13.0",
    "CFBundleIdentifier" : "org.cocoapods.FirebaseCoreExtension",
    "size" : 16384,
    "uuid" : "3ff2767c-2fbe-3fdd-99ef-ef6869be9461",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/FirebaseCoreExtension.framework\/FirebaseCoreExtension",
    "name" : "FirebaseCoreExtension",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4312875008,
    "CFBundleShortVersionString" : "12.13.0",
    "CFBundleIdentifier" : "org.cocoapods.FirebaseCoreInternal",
    "size" : 163840,
    "uuid" : "e7db18e8-7413-3470-91e3-91c6715d4fc1",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/FirebaseCoreInternal.framework\/FirebaseCoreInternal",
    "name" : "FirebaseCoreInternal",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4321624064,
    "CFBundleShortVersionString" : "12.13.0",
    "CFBundleIdentifier" : "org.cocoapods.FirebaseFirestore",
    "size" : 524288,
    "uuid" : "3441578d-2994-38a2-9fee-4761f79f53bc",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/FirebaseFirestore.framework\/FirebaseFirestore",
    "name" : "FirebaseFirestore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4421517312,
    "CFBundleShortVersionString" : "12.13.0",
    "CFBundleIdentifier" : "org.cocoapods.FirebaseFirestoreInternal",
    "size" : 5357568,
    "uuid" : "2b37a003-e84b-3f46-9fce-8abdc2b22a57",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/FirebaseFirestoreInternal.framework\/FirebaseFirestoreInternal",
    "name" : "FirebaseFirestoreInternal",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4311433216,
    "CFBundleShortVersionString" : "12.13.0",
    "CFBundleIdentifier" : "org.cocoapods.FirebaseInstallations",
    "size" : 114688,
    "uuid" : "92314b47-2c2d-38a5-8a22-05e5ae539dc5",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/FirebaseInstallations.framework\/FirebaseInstallations",
    "name" : "FirebaseInstallations",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4313956352,
    "CFBundleShortVersionString" : "12.13.0",
    "CFBundleIdentifier" : "org.cocoapods.FirebaseMessaging",
    "size" : 278528,
    "uuid" : "bdbd6db5-41d1-3800-89b3-ebbef22207b0",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/FirebaseMessaging.framework\/FirebaseMessaging",
    "name" : "FirebaseMessaging",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4320542720,
    "CFBundleShortVersionString" : "12.13.0",
    "CFBundleIdentifier" : "org.cocoapods.FirebaseSharedSwift",
    "size" : 294912,
    "uuid" : "edf5a176-1a38-30bd-acfc-1db8f1b3092b",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/FirebaseSharedSwift.framework\/FirebaseSharedSwift",
    "name" : "FirebaseSharedSwift",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4476796928,
    "CFBundleShortVersionString" : "6.9",
    "CFBundleIdentifier" : "com.apple.Foundation",
    "size" : 14401536,
    "uuid" : "2cc9fce0-08f9-3a0d-8a2f-6db229462de5",
    "path" : "\/Volumes\/VOLUME\/*\/Foundation.framework\/Foundation",
    "name" : "Foundation",
    "CFBundleVersion" : "5026.5.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4319821824,
    "CFBundleShortVersionString" : "129",
    "CFBundleIdentifier" : "com.apple.GLKit",
    "size" : 196608,
    "uuid" : "8bc4b97a-2fe0-314e-a6c1-c670f6b3f289",
    "path" : "\/Volumes\/VOLUME\/*\/GLKit.framework\/GLKit",
    "name" : "GLKit",
    "CFBundleVersion" : "129"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4313366528,
    "CFBundleShortVersionString" : "3.5.0",
    "CFBundleIdentifier" : "org.cocoapods.GTMSessionFetcher",
    "size" : 327680,
    "uuid" : "e9a7c217-771a-314e-9dcf-b785fafc60f8",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/GTMSessionFetcher.framework\/GTMSessionFetcher",
    "name" : "GTMSessionFetcher",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4330536960,
    "CFBundleShortVersionString" : "10.1.0",
    "CFBundleIdentifier" : "org.cocoapods.GoogleDataTransport",
    "size" : 196608,
    "uuid" : "d86ce0de-3109-3d33-9522-758978324294",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/GoogleDataTransport.framework\/GoogleDataTransport",
    "name" : "GoogleDataTransport",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4311138304,
    "CFBundleShortVersionString" : "8.1.0",
    "CFBundleIdentifier" : "org.cocoapods.GoogleUtilities",
    "size" : 131072,
    "uuid" : "f26d3363-d1f1-328f-a50c-6d5f31460907",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/GoogleUtilities.framework\/GoogleUtilities",
    "name" : "GoogleUtilities",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4412260352,
    "CFBundleShortVersionString" : "3.3.0",
    "CFBundleIdentifier" : "com.apple.ImageIO",
    "size" : 5111808,
    "uuid" : "3f851f82-f2ef-3eb4-8ab8-5556ea0e05e9",
    "path" : "\/Volumes\/VOLUME\/*\/ImageIO.framework\/ImageIO",
    "name" : "ImageIO",
    "CFBundleVersion" : "2784.5.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4439490560,
    "CFBundleShortVersionString" : "373.2",
    "CFBundleIdentifier" : "com.apple.Metal",
    "size" : 2179072,
    "uuid" : "da3bed8b-f22e-3ab0-b0a3-57217aaefa94",
    "path" : "\/Volumes\/VOLUME\/*\/Metal.framework\/Metal",
    "name" : "Metal",
    "CFBundleVersion" : "373.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4314529792,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.onesignal.OneSignalCore",
    "size" : 81920,
    "uuid" : "1a6cd696-a474-3207-8795-f3286a170522",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/OneSignalCore.framework\/OneSignalCore",
    "name" : "OneSignalCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4310695936,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.onesignal.OneSignalExtension",
    "size" : 49152,
    "uuid" : "c20669bd-8fbb-3c98-ad7e-583a467ae8ff",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/OneSignalExtension.framework\/OneSignalExtension",
    "name" : "OneSignalExtension",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4309729280,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.onesignal.OneSignal-Dynamic",
    "size" : 81920,
    "uuid" : "8449aef3-02a4-3966-91ad-30eb2c9a979c",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/OneSignalFramework.framework\/OneSignalFramework",
    "name" : "OneSignalFramework",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4330094592,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.onesignal.OneSignalInAppMessages",
    "size" : 163840,
    "uuid" : "231842f6-a2d5-3283-be5f-8126b2af6e73",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/OneSignalInAppMessages.framework\/OneSignalInAppMessages",
    "name" : "OneSignalInAppMessages",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4330962944,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.onesignal.OneSignalLiveActivities",
    "size" : 163840,
    "uuid" : "a4e20173-a576-3422-968c-cdb25294e209",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/OneSignalLiveActivities.framework\/OneSignalLiveActivities",
    "name" : "OneSignalLiveActivities",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4307795968,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.onesignal.OneSignalLocation",
    "size" : 32768,
    "uuid" : "fa0c88b1-14bb-3096-aa2a-83885dff9888",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/OneSignalLocation.framework\/OneSignalLocation",
    "name" : "OneSignalLocation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4321247232,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.onesignal.OneSignalNotifications",
    "size" : 65536,
    "uuid" : "8b3e9860-3996-3e85-b7c2-4eaafb1731fc",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/OneSignalNotifications.framework\/OneSignalNotifications",
    "name" : "OneSignalNotifications",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4321427456,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.onesignal.OneSignalOSCore",
    "size" : 98304,
    "uuid" : "3ad4d911-af5c-3823-92fc-8c561e9927ab",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/OneSignalOSCore.framework\/OneSignalOSCore",
    "name" : "OneSignalOSCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4373626880,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.onesignal.OneSignalOutcomes",
    "size" : 81920,
    "uuid" : "af24a17c-6ffa-332d-bbb2-a7d295125d57",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/OneSignalOutcomes.framework\/OneSignalOutcomes",
    "name" : "OneSignalOutcomes",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4396105728,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.onesignal.OneSignalUser",
    "size" : 327680,
    "uuid" : "03f0108d-916b-314b-8ac8-4f7292895603",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/OneSignalUser.framework\/OneSignalUser",
    "name" : "OneSignalUser",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4320313344,
    "CFBundleShortVersionString" : "23.1.1",
    "CFBundleIdentifier" : "com.apple.opengles",
    "size" : 65536,
    "uuid" : "3c12d848-bcc8-3b4c-a930-06aec2473400",
    "path" : "\/Volumes\/VOLUME\/*\/OpenGLES.framework\/OpenGLES",
    "name" : "OpenGLES",
    "CFBundleVersion" : "23.1.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4309450752,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PassKit",
    "size" : 16384,
    "uuid" : "6f8f099a-45bd-313d-b6c6-0504e522507b",
    "path" : "\/Volumes\/VOLUME\/*\/PassKit.framework\/PassKit",
    "name" : "PassKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4444913664,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Photos",
    "size" : 3932160,
    "uuid" : "350ea1cb-6fcb-3628-9b21-59b351996fbe",
    "path" : "\/Volumes\/VOLUME\/*\/Photos.framework\/Photos",
    "name" : "Photos",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4453122048,
    "CFBundleShortVersionString" : "1195.14.4",
    "CFBundleIdentifier" : "com.apple.QuartzCore",
    "size" : 3325952,
    "uuid" : "8be360df-f68a-37c7-99ee-ddaf3da9a99f",
    "path" : "\/Volumes\/VOLUME\/*\/QuartzCore.framework\/QuartzCore",
    "name" : "QuartzCore",
    "CFBundleVersion" : "1195.14.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4314742784,
    "CFBundleShortVersionString" : "101.0.0",
    "CFBundleIdentifier" : "org.cocoapods.RecaptchaInterop",
    "size" : 16384,
    "uuid" : "3f2351ce-8529-3703-940f-10e3fbfa3f66",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/RecaptchaInterop.framework\/RecaptchaInterop",
    "name" : "RecaptchaInterop",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4397645824,
    "CFBundleShortVersionString" : "5.21.7",
    "CFBundleIdentifier" : "org.cocoapods.SDWebImage",
    "size" : 524288,
    "uuid" : "f769240c-fb3a-37c9-927b-98b7167f8266",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/SDWebImage.framework\/SDWebImage",
    "name" : "SDWebImage",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4458627072,
    "CFBundleShortVersionString" : "26.5",
    "CFBundleIdentifier" : "com.apple.SafariServices",
    "size" : 2375680,
    "uuid" : "07270e96-f86e-37c0-a0fd-06e43857630b",
    "path" : "\/Volumes\/VOLUME\/*\/SafariServices.framework\/SafariServices",
    "name" : "SafariServices",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4407099392,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.Security",
    "size" : 1884160,
    "uuid" : "0af8a4fb-209e-31f7-ba57-f4084c1d23af",
    "path" : "\/Volumes\/VOLUME\/*\/Security.framework\/Security",
    "name" : "Security",
    "CFBundleVersion" : "61901.120.67"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4470161408,
    "CFBundleShortVersionString" : "8.58.2",
    "CFBundleIdentifier" : "org.cocoapods.Sentry",
    "size" : 2752512,
    "uuid" : "7bc16bbd-95f8-3a0a-a0c7-ba778644308f",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/Sentry.framework\/Sentry",
    "name" : "Sentry",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4396580864,
    "CFBundleShortVersionString" : "24.7.0",
    "CFBundleIdentifier" : "org.cocoapods.Stripe",
    "size" : 163840,
    "uuid" : "77c4ba35-563a-3d73-81d5-1f7ebd650f7b",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/Stripe.framework\/Stripe",
    "name" : "Stripe",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4405018624,
    "CFBundleShortVersionString" : "24.7.0",
    "CFBundleIdentifier" : "org.cocoapods.StripeApplePay",
    "size" : 589824,
    "uuid" : "622927f7-97f0-3933-9dbd-31152647ce7f",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/StripeApplePay.framework\/StripeApplePay",
    "name" : "StripeApplePay",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4466294784,
    "CFBundleShortVersionString" : "24.7.0",
    "CFBundleIdentifier" : "org.cocoapods.StripeCore",
    "size" : 901120,
    "uuid" : "387f4b3d-20e3-33e5-8c49-98f838c22a89",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/StripeCore.framework\/StripeCore",
    "name" : "StripeCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4522885120,
    "CFBundleShortVersionString" : "24.7.0",
    "CFBundleIdentifier" : "org.cocoapods.StripeFinancialConnections",
    "size" : 3194880,
    "uuid" : "d061523f-5112-3976-8452-212ad34e3177",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/StripeFinancialConnections.framework\/StripeFinancialConnections",
    "name" : "StripeFinancialConnections",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4542365696,
    "CFBundleShortVersionString" : "24.7.0",
    "CFBundleIdentifier" : "org.cocoapods.StripePaymentSheet",
    "size" : 4456448,
    "uuid" : "77ea9d32-2294-32cc-a0f0-bfba8e2ef747",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/StripePaymentSheet.framework\/StripePaymentSheet",
    "name" : "StripePaymentSheet",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4531290112,
    "CFBundleShortVersionString" : "24.7.0",
    "CFBundleIdentifier" : "org.cocoapods.StripePayments",
    "size" : 2850816,
    "uuid" : "a5778573-7dff-344f-a0f9-88b1b9772d8c",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/StripePayments.framework\/StripePayments",
    "name" : "StripePayments",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4514594816,
    "CFBundleShortVersionString" : "24.7.0",
    "CFBundleIdentifier" : "org.cocoapods.StripePaymentsUI",
    "size" : 884736,
    "uuid" : "21daacb0-71e9-3eef-b7df-d54a8cdb46ff",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/StripePaymentsUI.framework\/StripePaymentsUI",
    "name" : "StripePaymentsUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4519149568,
    "CFBundleShortVersionString" : "24.7.0",
    "CFBundleIdentifier" : "org.cocoapods.StripeUICore",
    "size" : 901120,
    "uuid" : "16c5650a-fc9a-3292-bff7-871a705b8445",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/StripeUICore.framework\/StripeUICore",
    "name" : "StripeUICore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4395614208,
    "CFBundleShortVersionString" : "5.4.5",
    "CFBundleIdentifier" : "org.cocoapods.SwiftyGif",
    "size" : 98304,
    "uuid" : "c9ad0092-74f4-38fa-a40e-40fc4e3ac36b",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/SwiftyGif.framework\/SwiftyGif",
    "name" : "SwiftyGif",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4410671104,
    "CFBundleShortVersionString" : "1.21",
    "CFBundleIdentifier" : "com.apple.SystemConfiguration",
    "size" : 524288,
    "uuid" : "374cddd1-fae2-39a7-b824-6f019733eb4f",
    "path" : "\/Volumes\/VOLUME\/*\/SystemConfiguration.framework\/SystemConfiguration",
    "name" : "SystemConfiguration",
    "CFBundleVersion" : "1.21"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4310827008,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.UIKit",
    "size" : 16384,
    "uuid" : "4636a2d3-3f8d-3e96-94aa-023f16e1e9cc",
    "path" : "\/Volumes\/VOLUME\/*\/UIKit.framework\/UIKit",
    "name" : "UIKit",
    "CFBundleVersion" : "9126.5.5.2.103"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4596629504,
    "CFBundleShortVersionString" : "8624",
    "CFBundleIdentifier" : "com.apple.WebKit",
    "size" : 20660224,
    "uuid" : "d627190a-da4c-3a8e-a608-022203bb8ca9",
    "path" : "\/Volumes\/VOLUME\/*\/WebKit.framework\/WebKit",
    "name" : "WebKit",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4553523200,
    "CFBundleShortVersionString" : "1.20240722.0",
    "CFBundleIdentifier" : "org.cocoapods.absl",
    "size" : 1474560,
    "uuid" : "7fd3e93b-248f-3e3c-9a80-f78dd023249e",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/absl.framework\/absl",
    "name" : "absl",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4373987328,
    "CFBundleShortVersionString" : "6.4.1",
    "CFBundleIdentifier" : "org.cocoapods.app-links",
    "size" : 32768,
    "uuid" : "f020943d-4e72-3420-bf3f-077183e6d88d",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/app_links.framework\/app_links",
    "name" : "app_links",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4373823488,
    "CFBundleShortVersionString" : "0.0.1",
    "CFBundleIdentifier" : "org.cocoapods.audio-session",
    "size" : 65536,
    "uuid" : "c35bb0c6-56e9-3cb1-9f84-eea9a48d199f",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/audio_session.framework\/audio_session",
    "name" : "audio_session",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4397023232,
    "CFBundleShortVersionString" : "0.0.1",
    "CFBundleIdentifier" : "org.cocoapods.file-picker",
    "size" : 65536,
    "uuid" : "7941dd46-0233-376e-863a-b130591eece7",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/file_picker.framework\/file_picker",
    "name" : "file_picker",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4314824704,
    "CFBundleShortVersionString" : "2.4.3",
    "CFBundleIdentifier" : "org.cocoapods.flutter-native-splash",
    "size" : 16384,
    "uuid" : "75dccf7f-f4cc-3af2-acb6-1e79f84e3255",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/flutter_native_splash.framework\/flutter_native_splash",
    "name" : "flutter_native_splash",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4395892736,
    "CFBundleShortVersionString" : "6.0.0",
    "CFBundleIdentifier" : "org.cocoapods.flutter-secure-storage",
    "size" : 65536,
    "uuid" : "2323d9c0-6920-3395-bf01-75edff0aa688",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/flutter_secure_storage.framework\/flutter_secure_storage",
    "name" : "flutter_secure_storage",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4331274240,
    "CFBundleShortVersionString" : "1.0.5",
    "CFBundleIdentifier" : "org.cocoapods.geocoding-ios",
    "size" : 32768,
    "uuid" : "37329431-7ee0-318c-93ee-ddbbc982d0ce",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/geocoding_ios.framework\/geocoding_ios",
    "name" : "geocoding_ios",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4397350912,
    "CFBundleShortVersionString" : "1.2.0",
    "CFBundleIdentifier" : "org.cocoapods.geolocator-apple",
    "size" : 49152,
    "uuid" : "59872d34-243d-36e5-aa5e-5e55aa9684ff",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/geolocator_apple.framework\/geolocator_apple",
    "name" : "geolocator_apple",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4684103680,
    "CFBundleShortVersionString" : "1.69.0",
    "CFBundleIdentifier" : "org.cocoapods.grpc",
    "size" : 12959744,
    "uuid" : "a914ca39-5b37-3d12-a126-a76e732fd5d5",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/grpc.framework\/grpc",
    "name" : "grpc",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4557242368,
    "CFBundleShortVersionString" : "1.69.0",
    "CFBundleIdentifier" : "org.cocoapods.grpcpp",
    "size" : 753664,
    "uuid" : "c7249817-0314-3b61-9e40-95db689c22cf",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/grpcpp.framework\/grpcpp",
    "name" : "grpcpp",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4398923776,
    "CFBundleShortVersionString" : "0.0.1",
    "CFBundleIdentifier" : "org.cocoapods.image-picker-ios",
    "size" : 81920,
    "uuid" : "61716bac-20a4-300e-b4cf-5a2e103edb14",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/image_picker_ios.framework\/image_picker_ios",
    "name" : "image_picker_ios",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4399136768,
    "CFBundleShortVersionString" : "0.0.1",
    "CFBundleIdentifier" : "org.cocoapods.just-audio",
    "size" : 98304,
    "uuid" : "85e74fb2-0ba8-37ae-86ea-6a6b836e458f",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/just_audio.framework\/just_audio",
    "name" : "just_audio",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4464066560,
    "CFBundleShortVersionString" : "1.22.6",
    "CFBundleIdentifier" : "org.cocoapods.leveldb",
    "size" : 425984,
    "uuid" : "3a3afbe9-027b-3ca2-a7b1-486c1590f856",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/leveldb.framework\/leveldb",
    "name" : "leveldb",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4403822592,
    "CFBundleShortVersionString" : "0.0.1",
    "CFBundleIdentifier" : "org.cocoapods.local-auth-darwin",
    "size" : 98304,
    "uuid" : "ce9eea5e-e06d-3098-b63e-01ca6aa43a00",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/local_auth_darwin.framework\/local_auth_darwin",
    "name" : "local_auth_darwin",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4397498368,
    "CFBundleShortVersionString" : "3.30910.0",
    "CFBundleIdentifier" : "org.cocoapods.nanopb",
    "size" : 32768,
    "uuid" : "6f33cecc-a786-31d8-86c5-5eb672c9f2d6",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/nanopb.framework\/nanopb",
    "name" : "nanopb",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4559978496,
    "CFBundleShortVersionString" : "0.0.37",
    "CFBundleIdentifier" : "org.cocoapods.openssl-grpc",
    "size" : 1884160,
    "uuid" : "92e4ebf5-c68b-3abb-9f98-c592a17349e0",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/openssl_grpc.framework\/openssl_grpc",
    "name" : "openssl_grpc",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4323426304,
    "CFBundleShortVersionString" : "0.4.5",
    "CFBundleIdentifier" : "org.cocoapods.package-info-plus",
    "size" : 16384,
    "uuid" : "25b41335-1b81-3dd2-824c-3e887c30f01d",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/package_info_plus.framework\/package_info_plus",
    "name" : "package_info_plus",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4397187072,
    "CFBundleShortVersionString" : "0.0.1",
    "CFBundleIdentifier" : "org.cocoapods.path-provider-foundation",
    "size" : 49152,
    "uuid" : "270457c8-567b-3149-8113-b4ccac6f271b",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/path_provider_foundation.framework\/path_provider_foundation",
    "name" : "path_provider_foundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4403527680,
    "CFBundleShortVersionString" : "9.20.0",
    "CFBundleIdentifier" : "org.cocoapods.sentry-flutter",
    "size" : 131072,
    "uuid" : "7fb13fa2-2ba7-3f23-9994-d869c78e42d1",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/sentry_flutter.framework\/sentry_flutter",
    "name" : "sentry_flutter",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4399349760,
    "CFBundleShortVersionString" : "0.0.1",
    "CFBundleIdentifier" : "org.cocoapods.share-plus",
    "size" : 32768,
    "uuid" : "88fdd43c-61ef-37e4-a17a-9f359cd2c79d",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/share_plus.framework\/share_plus",
    "name" : "share_plus",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4404412416,
    "CFBundleShortVersionString" : "0.0.4",
    "CFBundleIdentifier" : "org.cocoapods.sqflite-darwin",
    "size" : 131072,
    "uuid" : "ea7e101b-fa1a-3681-a0ab-38887e8f1049",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/sqflite_darwin.framework\/sqflite_darwin",
    "name" : "sqflite_darwin",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4538236928,
    "CFBundleShortVersionString" : "0.0.1",
    "CFBundleIdentifier" : "org.cocoapods.stripe-ios",
    "size" : 1097728,
    "uuid" : "ccc01fa5-d7b4-34a6-834f-bb4753fcf841",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/stripe_ios.framework\/stripe_ios",
    "name" : "stripe_ios",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4398694400,
    "CFBundleShortVersionString" : "0.0.1",
    "CFBundleIdentifier" : "org.cocoapods.url-launcher-ios",
    "size" : 65536,
    "uuid" : "1760dee7-5844-3f85-a264-c2e4e6a94adb",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/url_launcher_ios.framework\/url_launcher_ios",
    "name" : "url_launcher_ios",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4411555840,
    "CFBundleShortVersionString" : "0.0.1",
    "CFBundleIdentifier" : "org.cocoapods.video-player-avfoundation",
    "size" : 180224,
    "uuid" : "c05a85df-5c76-3ebd-a990-ab8e7a1055e9",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/video_player_avfoundation.framework\/video_player_avfoundation",
    "name" : "video_player_avfoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4404232192,
    "CFBundleShortVersionString" : "0.0.1",
    "CFBundleIdentifier" : "org.cocoapods.wakelock-plus",
    "size" : 32768,
    "uuid" : "ddc1eade-e4ad-3c4a-84bc-84024e01499a",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/wakelock_plus.framework\/wakelock_plus",
    "name" : "wakelock_plus",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4540432384,
    "CFBundleShortVersionString" : "0.0.1",
    "CFBundleIdentifier" : "org.cocoapods.webview-flutter-wkwebview",
    "size" : 720896,
    "uuid" : "3b21303b-822f-39ff-a74d-f22092f88e54",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/webview_flutter_wkwebview.framework\/webview_flutter_wkwebview",
    "name" : "webview_flutter_wkwebview",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4566777856,
    "CFBundleShortVersionString" : "296",
    "CFBundleIdentifier" : "com.apple.LinkPresentation",
    "size" : 1622016,
    "uuid" : "ad8af254-dbb2-318b-8195-4f6618361310",
    "path" : "\/Volumes\/VOLUME\/*\/LinkPresentation.framework\/LinkPresentation",
    "name" : "LinkPresentation",
    "CFBundleVersion" : "296.11"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4468539392,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.UserNotifications",
    "size" : 311296,
    "uuid" : "9294c11a-1bb8-33cd-a3b1-b21da5a213c3",
    "path" : "\/Volumes\/VOLUME\/*\/UserNotifications.framework\/UserNotifications",
    "name" : "UserNotifications"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4421042176,
    "size" : 262144,
    "uuid" : "727c4040-5e6d-3dae-b22c-9a337d46c34f",
    "path" : "\/Volumes\/VOLUME\/*\/libobjc.A.dylib",
    "name" : "libobjc.A.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4570267648,
    "CFBundleShortVersionString" : "12.0",
    "CFBundleIdentifier" : "com.apple.AuthenticationServices",
    "size" : 1605632,
    "uuid" : "72818307-8d18-39bd-9aa5-7e0e5f49e123",
    "path" : "\/Volumes\/VOLUME\/*\/AuthenticationServices.framework\/AuthenticationServices",
    "name" : "AuthenticationServices",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4583948288,
    "CFBundleShortVersionString" : "6.9",
    "CFBundleIdentifier" : "com.apple.CoreFoundation",
    "size" : 4407296,
    "uuid" : "e74d7b62-0aac-3013-a55b-f15135d4bd2e",
    "path" : "\/Volumes\/VOLUME\/*\/CoreFoundation.framework\/CoreFoundation",
    "name" : "CoreFoundation",
    "CFBundleVersion" : "5026.5.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4639784960,
    "size" : 4997120,
    "uuid" : "278dff77-40c0-3e59-8fe1-7c91fc72144a",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftCore.dylib",
    "name" : "libswiftCore.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4406525952,
    "size" : 32768,
    "uuid" : "9c1d38e0-888c-394b-9671-f47b6163443f",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftCoreAudio.dylib",
    "name" : "libswiftCoreAudio.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4406706176,
    "size" : 32768,
    "uuid" : "44f9ac34-451a-346e-b901-6219dc5e2fa3",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftCoreFoundation.dylib",
    "name" : "libswiftCoreFoundation.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4330455040,
    "size" : 16384,
    "uuid" : "ea95b96c-1532-31f1-a4b2-da18493d4c28",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftCoreImage.dylib",
    "name" : "libswiftCoreImage.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4465623040,
    "size" : 131072,
    "uuid" : "fee51bcd-3fe2-3305-9c13-af84f389bdcc",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftCoreLocation.dylib",
    "name" : "libswiftCoreLocation.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4563288064,
    "size" : 360448,
    "uuid" : "554c2d3c-5f1d-3899-a257-f0628aa03b04",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftCoreMedia.dylib",
    "name" : "libswiftCoreMedia.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4399464448,
    "size" : 16384,
    "uuid" : "615dc6a5-1547-39e7-b8e7-e55597e5fd82",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftDarwin.dylib",
    "name" : "libswiftDarwin.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4469325824,
    "size" : 98304,
    "uuid" : "6b31fdba-bd10-3cb3-a2c1-e12bc5553360",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftDispatch.dylib",
    "name" : "libswiftDispatch.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4404854784,
    "size" : 32768,
    "uuid" : "7f7e43ff-9a80-38ed-8aa8-7200f227138b",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftMetal.dylib",
    "name" : "libswiftMetal.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4404101120,
    "size" : 16384,
    "uuid" : "ccee512a-7781-3c2b-9428-fb82f1f375b2",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftOSLog.dylib",
    "name" : "libswiftOSLog.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4406935552,
    "size" : 16384,
    "uuid" : "bedd74de-8419-3529-965f-f47985ca2e31",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftObjectiveC.dylib",
    "name" : "libswiftObjectiveC.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4404707328,
    "size" : 16384,
    "uuid" : "91515f0e-2ca1-3116-b7d6-a3a5615a7039",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftQuartzCore.dylib",
    "name" : "libswiftQuartzCore.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4521492480,
    "size" : 442368,
    "uuid" : "41018f6a-79b1-34f5-bd0a-c8a05679d789",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftSpatial.dylib",
    "name" : "libswiftSpatial.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4469768192,
    "size" : 65536,
    "uuid" : "e52a9a30-bfdc-3da0-96d5-98646a0c42d2",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftUniformTypeIdentifiers.dylib",
    "name" : "libswiftUniformTypeIdentifiers.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4517527552,
    "size" : 278528,
    "uuid" : "6ff16216-5fcc-3d53-92b1-3defe4ebb7de",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftXPC.dylib",
    "name" : "libswiftXPC.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4476305408,
    "size" : 114688,
    "uuid" : "1d3376b8-9a80-3a59-9d0c-73be3d9b27f8",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftos.dylib",
    "name" : "libswiftos.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4516806656,
    "size" : 98304,
    "uuid" : "efe4acbb-6f18-3ef7-a194-a53882cacfac",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftsimd.dylib",
    "name" : "libswiftsimd.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4769185792,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "io.flutter.flutter",
    "size" : 32014336,
    "uuid" : "4c4c4413-5555-3144-a191-dfec12239c3c",
    "path" : "\/Users\/USER\/Library\/Developer\/CoreSimulator\/Devices\/AEE83FC0-AFCF-4B06-BA82-8E2BCD7B9836\/data\/Containers\/Bundle\/Application\/20D60C17-6125-4FAF-8CD1-D38E629FA92B\/Runner.app\/Frameworks\/Flutter.framework\/Flutter",
    "name" : "Flutter",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4310876160,
    "size" : 16384,
    "uuid" : "72d488b4-5a93-3cf9-afcb-d7d68b85d612",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftFoundation.dylib",
    "name" : "libswiftFoundation.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4860444672,
    "CFBundleShortVersionString" : "7.5.3",
    "CFBundleIdentifier" : "com.apple.SwiftUI",
    "size" : 18513920,
    "uuid" : "2332ef71-3e29-3e60-9849-acdd69b6b8ef",
    "path" : "\/Volumes\/VOLUME\/*\/SwiftUI.framework\/SwiftUI",
    "name" : "SwiftUI",
    "CFBundleVersion" : "7.5.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4311711744,
    "size" : 16384,
    "uuid" : "710be927-bac3-3b9e-b7ce-dbe0c5e8e2a5",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftUIKit.dylib",
    "name" : "libswiftUIKit.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4517150720,
    "size" : 114688,
    "uuid" : "ca04d801-3e4b-3a57-aead-0a5eb2db0671",
    "path" : "\/Volumes\/VOLUME\/*\/libc++abi.dylib",
    "name" : "libc++abi.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4412030976,
    "size" : 32768,
    "uuid" : "18cb5f7e-4707-3df5-8858-d413a8c30ead",
    "path" : "\/Volumes\/VOLUME\/*\/libcache.dylib",
    "name" : "libcache.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4465344512,
    "size" : 65536,
    "uuid" : "0ec99a76-d288-36e6-8c86-9320744497d3",
    "path" : "\/Volumes\/VOLUME\/*\/libcommonCrypto.dylib",
    "name" : "libcommonCrypto.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4412112896,
    "size" : 16384,
    "uuid" : "5539b26b-6fa7-341f-9c21-25f04bc8138b",
    "path" : "\/Volumes\/VOLUME\/*\/libcompiler_rt.dylib",
    "name" : "libcompiler_rt.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4466065408,
    "size" : 49152,
    "uuid" : "6c335dd0-6ad0-3df6-a206-9f8e0adc2775",
    "path" : "\/Volumes\/VOLUME\/*\/libcopyfile.dylib",
    "name" : "libcopyfile.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4573446144,
    "size" : 704512,
    "uuid" : "730b0835-7d7b-35a3-b73e-7fc1d2c4403e",
    "path" : "\/Volumes\/VOLUME\/*\/libcorecrypto.dylib",
    "name" : "libcorecrypto.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4564811776,
    "size" : 294912,
    "uuid" : "42b50931-38d5-3a5d-90ef-0fd7239c408d",
    "path" : "\/Volumes\/VOLUME\/*\/libdispatch.dylib",
    "name" : "libdispatch.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4518674432,
    "size" : 180224,
    "uuid" : "2b7568e6-5eee-33e0-b471-2fdaae4ff448",
    "path" : "\/Volumes\/VOLUME\/*\/libdyld.dylib",
    "name" : "libdyld.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4465180672,
    "size" : 16384,
    "uuid" : "fe0bf4dc-7db2-3fab-80f3-f07d856a6414",
    "path" : "\/Volumes\/VOLUME\/*\/libmacho.dylib",
    "name" : "libmacho.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4320477184,
    "size" : 16384,
    "uuid" : "75f9cee8-c230-37d7-b8a0-030d2cd40964",
    "path" : "\/Volumes\/VOLUME\/*\/libremovefile.dylib",
    "name" : "libremovefile.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4518445056,
    "size" : 98304,
    "uuid" : "1e052c18-f23a-3780-8dbc-38155de2b31a",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_asl.dylib",
    "name" : "libsystem_asl.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4470030336,
    "size" : 16384,
    "uuid" : "a5fdf1ff-b793-3574-8903-d24571eacd25",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_blocks.dylib",
    "name" : "libsystem_blocks.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4574445568,
    "size" : 524288,
    "uuid" : "05f4b01b-e685-39fa-93f3-de10cd9b511a",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_c.dylib",
    "name" : "libsystem_c.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4466196480,
    "size" : 32768,
    "uuid" : "06537bb0-a40f-3f9d-b2cf-7ac91a08073d",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_collections.dylib",
    "name" : "libsystem_collections.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4465262592,
    "size" : 16384,
    "uuid" : "ff160b5b-bed6-3deb-9262-8d782365ce7d",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_configuration.dylib",
    "name" : "libsystem_configuration.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4565827584,
    "size" : 212992,
    "uuid" : "13711693-a3b5-3d1c-a3ec-2b5748d8f402",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_containermanager.dylib",
    "name" : "libsystem_containermanager.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4465508352,
    "size" : 16384,
    "uuid" : "69c961ba-ae03-3c41-8e83-5105c19d534e",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_coreservices.dylib",
    "name" : "libsystem_coreservices.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4565450752,
    "size" : 49152,
    "uuid" : "c063c99f-5786-3246-a3d5-1fdb58b6e724",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_darwin.dylib",
    "name" : "libsystem_darwin.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4518248448,
    "size" : 49152,
    "uuid" : "182d0639-7968-31d5-a78f-d883b2c7ea1e",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_dnssd.dylib",
    "name" : "libsystem_dnssd.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4522770432,
    "size" : 49152,
    "uuid" : "31e55943-3ed0-3940-8c4a-3a33275073b1",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_eligibility.dylib",
    "name" : "libsystem_eligibility.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4476682240,
    "size" : 16384,
    "uuid" : "fff724a7-f6d0-3400-bfac-d50395d8ac1c",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_featureflags.dylib",
    "name" : "libsystem_featureflags.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4575199232,
    "size" : 163840,
    "uuid" : "29821f88-c763-338e-a4cc-4fb7c6fb5d35",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_info.dylib",
    "name" : "libsystem_info.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4575494144,
    "size" : 262144,
    "uuid" : "f7674b20-d879-3915-999d-4798f27c2171",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_m.dylib",
    "name" : "libsystem_m.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4575838208,
    "size" : 294912,
    "uuid" : "f71aeb05-0d59-37ba-b0f2-457432bb09b5",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_malloc.dylib",
    "name" : "libsystem_malloc.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4566204416,
    "size" : 114688,
    "uuid" : "e891b1d0-57b3-3a83-ae97-d1d96b2da2ec",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_networkextension.dylib",
    "name" : "libsystem_networkextension.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4566433792,
    "size" : 65536,
    "uuid" : "0a12237c-b994-34f8-aa5b-2421516467bf",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_notify.dylib",
    "name" : "libsystem_notify.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4565712896,
    "size" : 32768,
    "uuid" : "80656448-a78b-306e-8325-b5fb11634505",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_sandbox.dylib",
    "name" : "libsystem_sandbox.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4566581248,
    "size" : 32768,
    "uuid" : "40b6bbaa-61ac-34c6-a2e1-fb3abc4f13d4",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_sanitizers.dylib",
    "name" : "libsystem_sanitizers.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4576313344,
    "size" : 16384,
    "uuid" : "488d759c-27ac-3544-9519-c1e4514ffb61",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_sim_kernel.dylib",
    "name" : "libsystem_sim_kernel.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4576411648,
    "size" : 16384,
    "uuid" : "cd88b0bf-7a62-37b3-8604-97dd221779f4",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_sim_platform.dylib",
    "name" : "libsystem_sim_platform.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4517445632,
    "size" : 16384,
    "uuid" : "8299108f-5505-3232-a6db-9cdc00ccbee8",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_sim_pthread.dylib",
    "name" : "libsystem_sim_pthread.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4576788480,
    "size" : 131072,
    "uuid" : "4138f7ef-2588-38b1-9977-1502a60e2e36",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_trace.dylib",
    "name" : "libsystem_trace.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4374134784,
    "size" : 16384,
    "uuid" : "f08c1e0a-6ae0-3853-accc-16db5af83e32",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_trial.dylib",
    "name" : "libsystem_trial.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4576526336,
    "size" : 32768,
    "uuid" : "c4187425-764f-3506-a411-5102b50ae804",
    "path" : "\/Volumes\/VOLUME\/*\/libunwind.dylib",
    "name" : "libunwind.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4577640448,
    "size" : 294912,
    "uuid" : "ff603b08-461e-35c4-82e6-3ad8e5d12848",
    "path" : "\/Volumes\/VOLUME\/*\/libxpc.dylib",
    "name" : "libxpc.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4404346880,
    "size" : 16384,
    "uuid" : "0e3b310f-5f2f-3902-9055-ce9ddb9530e4",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_sim_platform_host.dylib",
    "name" : "libsystem_sim_platform_host.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4578230272,
    "size" : 49152,
    "uuid" : "0831b8d2-190f-31fc-9eb6-ea8ba11fe47b",
    "path" : "\/usr\/lib\/system\/libsystem_platform.dylib",
    "name" : "libsystem_platform.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4577050624,
    "size" : 245760,
    "uuid" : "856091df-df82-3985-9695-28eac306bcb5",
    "path" : "\/usr\/lib\/system\/libsystem_kernel.dylib",
    "name" : "libsystem_kernel.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4404789248,
    "size" : 16384,
    "uuid" : "44bb20ac-1ee2-358d-b7c2-d0fe2ea626c3",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_sim_kernel_host.dylib",
    "name" : "libsystem_sim_kernel_host.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4412194816,
    "size" : 16384,
    "uuid" : "0f1e6a3a-cb26-3182-81c4-fe321f9aea69",
    "path" : "\/Volumes\/VOLUME\/*\/libsystem_sim_pthread_host.dylib",
    "name" : "libsystem_sim_pthread_host.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4578918400,
    "size" : 65536,
    "uuid" : "1e522024-387b-3d18-81ca-f4559198954b",
    "path" : "\/usr\/lib\/system\/libsystem_pthread.dylib",
    "name" : "libsystem_pthread.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4579835904,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreAutoLayout",
    "size" : 278528,
    "uuid" : "019c74a5-8186-357b-9d04-15223347cdb3",
    "path" : "\/Volumes\/VOLUME\/*\/CoreAutoLayout.framework\/CoreAutoLayout",
    "name" : "CoreAutoLayout",
    "CFBundleVersion" : "33"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4581425152,
    "size" : 868352,
    "uuid" : "fb37cba8-ee5b-3937-91d0-6cb3112f7d7f",
    "path" : "\/Volumes\/VOLUME\/*\/libcompression.dylib",
    "name" : "libcompression.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4655235072,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CFNetwork",
    "size" : 3620864,
    "uuid" : "799e3578-e022-31f3-86af-938cea488909",
    "path" : "\/Volumes\/VOLUME\/*\/CFNetwork.framework\/CFNetwork",
    "name" : "CFNetwork",
    "CFBundleVersion" : "3860.600.12"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4594466816,
    "size" : 1015808,
    "uuid" : "fa5eb6ee-7e58-30c7-b0e0-248f778167b8",
    "path" : "\/Volumes\/VOLUME\/*\/libarchive.2.dylib",
    "name" : "libarchive.2.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4661608448,
    "size" : 2834432,
    "uuid" : "318b67c1-a854-3b53-a06d-dbdd2efbd54c",
    "path" : "\/Volumes\/VOLUME\/*\/libicucore.A.dylib",
    "name" : "libicucore.A.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4648861696,
    "size" : 917504,
    "uuid" : "457691c9-0574-3733-aba1-fc07680cee1c",
    "path" : "\/Volumes\/VOLUME\/*\/libxml2.2.dylib",
    "name" : "libxml2.2.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4518363136,
    "size" : 16384,
    "uuid" : "87cf3ee4-1a8f-3eaa-8c46-d9911fc4777f",
    "path" : "\/Volumes\/VOLUME\/*\/liblangid.dylib",
    "name" : "liblangid.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4650106880,
    "CFBundleShortVersionString" : "2.0.2",
    "CFBundleIdentifier" : "com.apple.framework.IOKit",
    "size" : 671744,
    "uuid" : "21ab2359-deec-3444-94fe-b7257e43be34",
    "path" : "\/Volumes\/VOLUME\/*\/IOKit.framework\/Versions\/A\/IOKit",
    "name" : "IOKit"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4665769984,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.combine",
    "size" : 753664,
    "uuid" : "adf01cb0-dcca-3309-8e17-6afa06f0fe13",
    "path" : "\/Volumes\/VOLUME\/*\/Combine.framework\/Combine",
    "name" : "Combine",
    "CFBundleVersion" : "3023"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4651253760,
    "CFBundleShortVersionString" : "1.2.0",
    "CFBundleIdentifier" : "com.apple.CollectionsInternal",
    "size" : 1097728,
    "uuid" : "79983626-9e50-3559-8509-7c9d56c4f467",
    "path" : "\/Volumes\/VOLUME\/*\/CollectionsInternal.framework\/CollectionsInternal",
    "name" : "CollectionsInternal",
    "CFBundleVersion" : "5026.5.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4578590720,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.ReflectionInternal",
    "size" : 32768,
    "uuid" : "7041477f-2198-3e3e-bb81-4bdb6e6e5920",
    "path" : "\/Volumes\/VOLUME\/*\/ReflectionInternal.framework\/ReflectionInternal",
    "name" : "ReflectionInternal",
    "CFBundleVersion" : "5026.5.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4582391808,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.RuntimeInternal",
    "size" : 81920,
    "uuid" : "9aabf4fa-0106-3224-8f53-e82b3cf9a177",
    "path" : "\/Volumes\/VOLUME\/*\/RuntimeInternal.framework\/RuntimeInternal",
    "name" : "RuntimeInternal",
    "CFBundleVersion" : "5026.5.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4565598208,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SoftLinking",
    "size" : 16384,
    "uuid" : "3c7a8698-b4e2-3f0c-b540-329b1154d5b5",
    "path" : "\/Volumes\/VOLUME\/*\/SoftLinking.framework\/SoftLinking",
    "name" : "SoftLinking",
    "CFBundleVersion" : "71"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4580851712,
    "size" : 98304,
    "uuid" : "52b9c2a8-04a8-3a4a-b3e1-0a85544465f4",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftSystem.dylib",
    "name" : "libswiftSystem.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4566695936,
    "size" : 16384,
    "uuid" : "66b61ecc-1aae-3dbf-acfb-37baa867b8d5",
    "path" : "\/Volumes\/VOLUME\/*\/libswift_Builtin_float.dylib",
    "name" : "libswift_Builtin_float.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4652843008,
    "size" : 425984,
    "uuid" : "c37acaad-0da6-3bd4-857e-b3ed6b6f16f3",
    "path" : "\/Volumes\/VOLUME\/*\/libswift_Concurrency.dylib",
    "name" : "libswift_Concurrency.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4577492992,
    "size" : 16384,
    "uuid" : "e672c826-dbc9-3df8-9bd2-c275d434dc77",
    "path" : "\/Volumes\/VOLUME\/*\/libswift_DarwinFoundation1.dylib",
    "name" : "libswift_DarwinFoundation1.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4667998208,
    "size" : 491520,
    "uuid" : "044b2024-fcb9-3e07-a6bd-3eb5aba02b52",
    "path" : "\/Volumes\/VOLUME\/*\/libswift_StringProcessing.dylib",
    "name" : "libswift_StringProcessing.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4583342080,
    "CFBundleShortVersionString" : "505",
    "CFBundleIdentifier" : "com.apple.CoreServicesInternal",
    "size" : 196608,
    "uuid" : "d9600ba2-caa8-363e-b89e-2fd636fb3847",
    "path" : "\/Volumes\/VOLUME\/*\/CoreServicesInternal.framework\/CoreServicesInternal",
    "name" : "CoreServicesInternal",
    "CFBundleVersion" : "505"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4673650688,
    "CFBundleShortVersionString" : "839",
    "CFBundleIdentifier" : "com.apple.CoreServices",
    "size" : 2342912,
    "uuid" : "27d2320d-91df-3974-a815-fbee4375327a",
    "path" : "\/Volumes\/VOLUME\/*\/CoreServices.framework\/CoreServices",
    "name" : "CoreServices",
    "CFBundleVersion" : "839"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4580458496,
    "CFBundleShortVersionString" : "2.0",
    "CFBundleIdentifier" : "com.apple.GenerationalStorage",
    "size" : 131072,
    "uuid" : "fec28243-b13f-3ae7-a919-641e01abb1b1",
    "path" : "\/Volumes\/VOLUME\/*\/GenerationalStorage.framework\/GenerationalStorage",
    "name" : "GenerationalStorage",
    "CFBundleVersion" : "397.120.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4653875200,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CacheDelete",
    "size" : 294912,
    "uuid" : "02946ecf-08d1-34a3-a192-ddf01a3fe9ef",
    "path" : "\/Volumes\/VOLUME\/*\/CacheDelete.framework\/CacheDelete",
    "name" : "CacheDelete",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4669095936,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.QuickLookThumbnailing",
    "size" : 311296,
    "uuid" : "9ad6cb57-aed9-380f-9246-3390ec167c77",
    "path" : "\/Volumes\/VOLUME\/*\/QuickLookThumbnailing.framework\/QuickLookThumbnailing",
    "name" : "QuickLookThumbnailing",
    "CFBundleVersion" : "208.6.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4678205440,
    "CFBundleShortVersionString" : "4018.120.24",
    "CFBundleIdentifier" : "com.apple.FileProvider",
    "size" : 1736704,
    "uuid" : "234c94f1-94fc-371e-86ad-f41b4bd77389",
    "path" : "\/Volumes\/VOLUME\/*\/FileProvider.framework\/FileProvider",
    "name" : "FileProvider",
    "CFBundleVersion" : "4018.120.24"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4728504320,
    "CFBundleShortVersionString" : "26.0",
    "CFBundleIdentifier" : "com.apple.desktopservices",
    "size" : 1458176,
    "uuid" : "0c1d318e-4d30-3e29-9dd9-6c6ca559ac63",
    "path" : "\/Volumes\/VOLUME\/*\/DesktopServicesPriv.framework\/DesktopServicesPriv",
    "name" : "DesktopServicesPriv",
    "CFBundleVersion" : "1827.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4671111168,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.InstalledContentLibrary",
    "size" : 638976,
    "uuid" : "ebcc8849-11f0-3e03-827a-872f590a32db",
    "path" : "\/Volumes\/VOLUME\/*\/InstalledContentLibrary.framework\/InstalledContentLibrary",
    "name" : "InstalledContentLibrary",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4731305984,
    "CFBundleShortVersionString" : "732.1.1",
    "CFBundleIdentifier" : "com.apple.BaseBoard",
    "size" : 917504,
    "uuid" : "ef3a155d-7fdc-30f0-ae49-334bfde137c4",
    "path" : "\/Volumes\/VOLUME\/*\/BaseBoard.framework\/BaseBoard",
    "name" : "BaseBoard",
    "CFBundleVersion" : "732.1.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4578410496,
    "size" : 81920,
    "uuid" : "eb366428-deeb-363b-b2bb-8af1f449d80c",
    "path" : "\/Volumes\/VOLUME\/*\/libbsm.0.dylib",
    "name" : "libbsm.0.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4654432256,
    "CFBundleShortVersionString" : "1141.1",
    "CFBundleIdentifier" : "com.apple.CSStore",
    "size" : 229376,
    "uuid" : "afae4407-6522-3bb5-ae33-785b59ba6414",
    "path" : "\/Volumes\/VOLUME\/*\/CoreServicesStore.framework\/CoreServicesStore",
    "name" : "CoreServicesStore",
    "CFBundleVersion" : "1141.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4672389120,
    "size" : 294912,
    "uuid" : "06ea7bbc-e1ab-355c-a64d-5bebf4b405e2",
    "path" : "\/Volumes\/VOLUME\/*\/libMobileGestalt.dylib",
    "name" : "libMobileGestalt.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4576624640,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MobileSystemServices",
    "size" : 16384,
    "uuid" : "ecafab0e-3e22-3aa6-ae28-abf59a903834",
    "path" : "\/Volumes\/VOLUME\/*\/MobileSystemServices.framework\/MobileSystemServices",
    "name" : "MobileSystemServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4669833216,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SecurityFoundation",
    "size" : 131072,
    "uuid" : "17272020-d603-30b2-a87b-52b7923282f3",
    "path" : "\/Volumes\/VOLUME\/*\/SecurityFoundation.framework\/SecurityFoundation",
    "name" : "SecurityFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4582916096,
    "CFBundleShortVersionString" : "1",
    "CFBundleIdentifier" : "com.apple.ProtocolBuffer",
    "size" : 114688,
    "uuid" : "1f55aefd-a729-39e8-a1bc-649835effdd8",
    "path" : "\/Volumes\/VOLUME\/*\/ProtocolBuffer.framework\/ProtocolBuffer",
    "name" : "ProtocolBuffer",
    "CFBundleVersion" : "310.35.2.9.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4579540992,
    "size" : 49152,
    "uuid" : "e7ed9f21-420a-3cc7-bfa3-e1ae0cabdbd2",
    "path" : "\/Volumes\/VOLUME\/*\/libCoreEntitlements.dylib",
    "name" : "libCoreEntitlements.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4682727424,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MessageSecurity",
    "size" : 376832,
    "uuid" : "0322f83f-d7ce-3911-bd3b-b93fc4927322",
    "path" : "\/Volumes\/VOLUME\/*\/MessageSecurity.framework\/MessageSecurity",
    "name" : "MessageSecurity"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4735811584,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.managedconfiguration",
    "size" : 1261568,
    "uuid" : "7f897721-c6ab-3540-8439-7bdf5267f18a",
    "path" : "\/Volumes\/VOLUME\/*\/ManagedConfiguration.framework\/ManagedConfiguration",
    "name" : "ManagedConfiguration",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4670291968,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CloudServices",
    "size" : 278528,
    "uuid" : "0e58c800-0298-324d-90f3-b37720e8caf0",
    "path" : "\/Volumes\/VOLUME\/*\/CloudServices.framework\/CloudServices",
    "name" : "CloudServices",
    "CFBundleVersion" : "694.120.16"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4681875456,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.analyticsd",
    "size" : 196608,
    "uuid" : "b046feda-a519-3e34-ac58-7633b837433f",
    "path" : "\/Volumes\/VOLUME\/*\/CoreAnalytics.framework\/CoreAnalytics",
    "name" : "CoreAnalytics",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4397596672,
    "CFBundleShortVersionString" : "1226",
    "CFBundleIdentifier" : "com.apple.MobileCoreServices",
    "size" : 16384,
    "uuid" : "927dcc28-5b3b-3a39-af9a-bce3b0a54fe8",
    "path" : "\/Volumes\/VOLUME\/*\/MobileCoreServices.framework\/MobileCoreServices",
    "name" : "MobileCoreServices",
    "CFBundleVersion" : "1226"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4596121600,
    "size" : 98304,
    "uuid" : "bc448f46-4618-3b38-8af3-e8c9971f65de",
    "path" : "\/Volumes\/VOLUME\/*\/libcoretls.dylib",
    "name" : "libcoretls.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4576690176,
    "size" : 16384,
    "uuid" : "120cea67-6ae4-308e-956c-c1edbab06f0c",
    "path" : "\/Volumes\/VOLUME\/*\/libcoretls_cfhelpers.dylib",
    "name" : "libcoretls_cfhelpers.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4911841280,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Network",
    "size" : 22511616,
    "uuid" : "29784682-6190-373a-a6f4-d6e5dbb30bd4",
    "path" : "\/Volumes\/VOLUME\/*\/Network.framework\/Network",
    "name" : "Network",
    "CFBundleVersion" : "5812.122.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4670783488,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BackgroundSystemTasks",
    "size" : 131072,
    "uuid" : "8e596b21-5d6d-35bc-92c9-c01e2cfe0ede",
    "path" : "\/Volumes\/VOLUME\/*\/BackgroundSystemTasks.framework\/BackgroundSystemTasks",
    "name" : "BackgroundSystemTasks",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4734238720,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.LoggingSupport",
    "size" : 557056,
    "uuid" : "c0411e1d-ef35-39bf-823e-19819f70b0c3",
    "path" : "\/Volumes\/VOLUME\/*\/LoggingSupport.framework\/LoggingSupport",
    "name" : "LoggingSupport",
    "CFBundleVersion" : "1861.120.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4740382720,
    "CFBundleShortVersionString" : "7.1",
    "CFBundleIdentifier" : "com.apple.Rapport",
    "size" : 901120,
    "uuid" : "451659e9-eb0e-3d44-b9d1-dd1ec4b850a2",
    "path" : "\/Volumes\/VOLUME\/*\/Rapport.framework\/Rapport",
    "name" : "Rapport",
    "CFBundleVersion" : "715.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4738482176,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RunningBoardServices",
    "size" : 393216,
    "uuid" : "02f5e55c-7232-3ad7-9bd0-329ca1ce87b3",
    "path" : "\/Volumes\/VOLUME\/*\/RunningBoardServices.framework\/RunningBoardServices",
    "name" : "RunningBoardServices",
    "CFBundleVersion" : "1015.100.16"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4744265728,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SwiftData",
    "size" : 1359872,
    "uuid" : "2449226e-2e13-3ad7-8ae3-5a808ecd2224",
    "path" : "\/Volumes\/VOLUME\/*\/SwiftData.framework\/SwiftData",
    "name" : "SwiftData",
    "CFBundleVersion" : "135"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4654907392,
    "CFBundleShortVersionString" : "709",
    "CFBundleIdentifier" : "com.apple.UniformTypeIdentifiers",
    "size" : 81920,
    "uuid" : "efa43886-3f7c-308a-9cb9-18ae459003e4",
    "path" : "\/Volumes\/VOLUME\/*\/UniformTypeIdentifiers.framework\/UniformTypeIdentifiers",
    "name" : "UniformTypeIdentifiers",
    "CFBundleVersion" : "709"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4673388544,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.UserManagement",
    "size" : 131072,
    "uuid" : "8749dfa9-1773-3374-9ba4-393aa711f4a7",
    "path" : "\/Volumes\/VOLUME\/*\/UserManagement.framework\/UserManagement",
    "name" : "UserManagement",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4746280960,
    "size" : 851968,
    "uuid" : "f594fbf9-eb6e-3d86-995e-bc88ea5ee368",
    "path" : "\/Volumes\/VOLUME\/*\/libboringssl.dylib",
    "name" : "libboringssl.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4579672064,
    "size" : 32768,
    "uuid" : "a1114a57-45ad-3b92-b9ef-f70fdb67e08b",
    "path" : "\/Volumes\/VOLUME\/*\/libcupolicy.dylib",
    "name" : "libcupolicy.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4733140992,
    "size" : 278528,
    "uuid" : "a95474b4-7c61-3624-ba07-30444a336ac1",
    "path" : "\/Volumes\/VOLUME\/*\/libnetworkextension.dylib",
    "name" : "libnetworkextension.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4753129472,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.NetworkExtension",
    "size" : 2850816,
    "uuid" : "cac1760f-43bc-3641-96d2-287d061fc57a",
    "path" : "\/Volumes\/VOLUME\/*\/NetworkExtension.framework\/NetworkExtension",
    "name" : "NetworkExtension",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4747952128,
    "size" : 901120,
    "uuid" : "b1ded2da-10cc-3669-b93b-42fb9b121b38",
    "path" : "\/Volumes\/VOLUME\/*\/libquic.dylib",
    "name" : "libquic.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4739465216,
    "size" : 442368,
    "uuid" : "f3d7cfb2-749b-3e5d-bb0d-30db6394a78d",
    "path" : "\/Volumes\/VOLUME\/*\/libusrtcp.dylib",
    "name" : "libusrtcp.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4595924992,
    "size" : 98304,
    "uuid" : "6100d608-7225-3f28-acb0-08910d38015b",
    "path" : "\/Volumes\/VOLUME\/*\/libapple_nghttp2.dylib",
    "name" : "libapple_nghttp2.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4749197312,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.security.CryptoKit",
    "size" : 622592,
    "uuid" : "0a2d6cfa-1196-349a-bf84-fa4675d9eca6",
    "path" : "\/Volumes\/VOLUME\/*\/CryptoKit.framework\/CryptoKit",
    "name" : "CryptoKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4583178240,
    "CFBundleShortVersionString" : "1.1.0",
    "CFBundleIdentifier" : "com.apple.AtomicsInternal",
    "size" : 65536,
    "uuid" : "b1234974-3b34-3464-856d-fbdcc2daafc0",
    "path" : "\/Volumes\/VOLUME\/*\/AtomicsInternal.framework\/AtomicsInternal",
    "name" : "AtomicsInternal",
    "CFBundleVersion" : "5026.5.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4750229504,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.InternalSwiftProtobuf",
    "size" : 983040,
    "uuid" : "4c8f8d3b-7911-3940-a7a2-ffd9c61b3083",
    "path" : "\/Volumes\/VOLUME\/*\/InternalSwiftProtobuf.framework\/InternalSwiftProtobuf",
    "name" : "InternalSwiftProtobuf",
    "CFBundleVersion" : "1.26.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4682317824,
    "size" : 65536,
    "uuid" : "d3c1c414-652c-3423-a60f-f78f3d9d56c8",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftDistributed.dylib",
    "name" : "libswiftDistributed.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4683595776,
    "size" : 65536,
    "uuid" : "d8296875-a587-3665-b27f-6c2143b8f126",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftObservation.dylib",
    "name" : "libswiftObservation.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4683808768,
    "size" : 81920,
    "uuid" : "5bbe41de-a274-3e1f-9162-b21fedc5a2e7",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftSynchronization.dylib",
    "name" : "libswiftSynchronization.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4743135232,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.DuetActivityScheduler",
    "size" : 360448,
    "uuid" : "6cc0b760-4955-3f74-b826-1eed78e2c653",
    "path" : "\/Volumes\/VOLUME\/*\/DuetActivityScheduler.framework\/DuetActivityScheduler",
    "name" : "DuetActivityScheduler",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4758323200,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.private.NanoRegistry",
    "size" : 442368,
    "uuid" : "3768e028-105c-3305-97c2-8ab2033bb507",
    "path" : "\/Volumes\/VOLUME\/*\/NanoRegistry.framework\/NanoRegistry",
    "name" : "NanoRegistry",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4735336448,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppConduit",
    "size" : 180224,
    "uuid" : "c636b6e2-8d77-374d-9d76-458f70fa276a",
    "path" : "\/Volumes\/VOLUME\/*\/AppConduit.framework\/AppConduit",
    "name" : "AppConduit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4578770944,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AggregateDictionary",
    "size" : 16384,
    "uuid" : "0ed507a0-73a4-3093-80fb-883e80d001f9",
    "path" : "\/Volumes\/VOLUME\/*\/AggregateDictionary.framework\/AggregateDictionary",
    "name" : "AggregateDictionary",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4751917056,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.coreduetcontext",
    "size" : 327680,
    "uuid" : "53d6d3ec-e3e7-3312-bcbe-15bdf349d193",
    "path" : "\/Volumes\/VOLUME\/*\/CoreDuetContext.framework\/CoreDuetContext",
    "name" : "CoreDuetContext",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4733632512,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.datamigration",
    "size" : 65536,
    "uuid" : "f12225ad-0121-3ae8-b94a-c97f9643390c",
    "path" : "\/Volumes\/VOLUME\/*\/DataMigration.framework\/DataMigration",
    "name" : "DataMigration",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4827086848,
    "CFBundleIdentifier" : "com.apple.BiomeLibrary",
    "size" : 8617984,
    "uuid" : "4a749063-e112-3444-bd7a-22261c9be479",
    "path" : "\/Volumes\/VOLUME\/*\/BiomeLibrary.framework\/BiomeLibrary",
    "name" : "BiomeLibrary",
    "CFBundleVersion" : "274.57"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4763664384,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreDuet",
    "size" : 2097152,
    "uuid" : "ea79bfde-3ef1-3199-b2c4-283f476c40c4",
    "path" : "\/Volumes\/VOLUME\/*\/CoreDuet.framework\/CoreDuet",
    "name" : "CoreDuet",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4844126208,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.biome.BiomeStreams",
    "size" : 5357568,
    "uuid" : "3cc01903-c85d-3e6f-9548-6643e4baf851",
    "path" : "\/Volumes\/VOLUME\/*\/BiomeStreams.framework\/BiomeStreams",
    "name" : "BiomeStreams",
    "CFBundleVersion" : "209.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4759322624,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.biome.BiomeFoundation",
    "size" : 327680,
    "uuid" : "39ee6d18-6c1f-3862-a337-98f03a4545c5",
    "path" : "\/Volumes\/VOLUME\/*\/BiomeFoundation.framework\/BiomeFoundation",
    "name" : "BiomeFoundation",
    "CFBundleVersion" : "209.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4761042944,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.biome.BiomePubSub",
    "size" : 360448,
    "uuid" : "8d3bb3ad-999e-385c-8049-c473504c505d",
    "path" : "\/Volumes\/VOLUME\/*\/BiomePubSub.framework\/BiomePubSub",
    "name" : "BiomePubSub",
    "CFBundleVersion" : "209.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4733829120,
    "size" : 131072,
    "uuid" : "3345e05b-95ba-3b4d-a854-5a008433dd58",
    "path" : "\/Volumes\/VOLUME\/*\/liblzma.5.dylib",
    "name" : "liblzma.5.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4734025728,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.NanoPreferencesSync",
    "size" : 81920,
    "uuid" : "8396a331-3c69-3007-b913-0deb5315d5b8",
    "path" : "\/Volumes\/VOLUME\/*\/NanoPreferencesSync.framework\/NanoPreferencesSync",
    "name" : "NanoPreferencesSync",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4760059904,
    "CFBundleShortVersionString" : "2.0",
    "CFBundleIdentifier" : "com.apple.MobileInstallation",
    "size" : 262144,
    "uuid" : "34784e13-a132-3be7-81cd-35e98e3239d3",
    "path" : "\/Volumes\/VOLUME\/*\/MobileInstallation.framework\/MobileInstallation",
    "name" : "MobileInstallation",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4752670720,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PairedDeviceRegistry",
    "size" : 163840,
    "uuid" : "b7fc181e-3db9-3b1e-8007-33744d5fe107",
    "path" : "\/Volumes\/VOLUME\/*\/PairedDeviceRegistry.framework\/PairedDeviceRegistry",
    "name" : "PairedDeviceRegistry",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4583768064,
    "size" : 32768,
    "uuid" : "436792f8-84e1-3128-8ee1-2f5489944487",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftCompression.dylib",
    "name" : "libswiftCompression.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4762025984,
    "CFBundleShortVersionString" : "14.0",
    "CFBundleIdentifier" : "com.apple.bom",
    "size" : 458752,
    "uuid" : "66688700-4efd-3f16-9634-f37aef57374b",
    "path" : "\/Volumes\/VOLUME\/*\/Bom.framework\/Bom",
    "name" : "Bom",
    "CFBundleVersion" : "277"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4762697728,
    "CFBundleShortVersionString" : "494",
    "CFBundleIdentifier" : "com.apple.IconFoundation",
    "size" : 376832,
    "uuid" : "d9e43c3d-0e1f-32b8-8765-d65e1515d215",
    "path" : "\/Volumes\/VOLUME\/*\/IconFoundation.framework\/IconFoundation",
    "name" : "IconFoundation",
    "CFBundleVersion" : "494"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4596318208,
    "size" : 49152,
    "uuid" : "9ed5059a-b841-32f1-a400-8e9f271495bf",
    "path" : "\/Volumes\/VOLUME\/*\/libbz2.1.0.dylib",
    "name" : "libbz2.1.0.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4768006144,
    "size" : 425984,
    "uuid" : "0a4fb0f9-6e92-3f71-98f2-2f728fe254a3",
    "path" : "\/Volumes\/VOLUME\/*\/libParallelCompression.dylib",
    "name" : "libParallelCompression.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4810047488,
    "size" : 622592,
    "uuid" : "0f428694-62d5-34f7-b68c-d69167bf2018",
    "path" : "\/Volumes\/VOLUME\/*\/libAppleArchive.dylib",
    "name" : "libAppleArchive.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4581261312,
    "size" : 32768,
    "uuid" : "e79ffd8e-88ef-364a-a6ee-e3aa898f064b",
    "path" : "\/Volumes\/VOLUME\/*\/libiconv.2.dylib",
    "name" : "libiconv.2.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4580753408,
    "size" : 16384,
    "uuid" : "6658215e-301a-3204-a60c-0f70f5d582df",
    "path" : "\/Volumes\/VOLUME\/*\/libcharset.1.dylib",
    "name" : "libcharset.1.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4810866688,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.cocoa.IconRendering",
    "size" : 425984,
    "uuid" : "10460c2f-185d-38f9-b2be-55f584474a35",
    "path" : "\/Volumes\/VOLUME\/*\/IconRendering.framework\/IconRendering",
    "name" : "IconRendering",
    "CFBundleVersion" : "92.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4813864960,
    "CFBundleShortVersionString" : "1",
    "CFBundleIdentifier" : "com.apple.SFSymbolsFramework",
    "size" : 540672,
    "uuid" : "819c4526-167c-31a0-9d92-4ba2e1b6f6cf",
    "path" : "\/Volumes\/VOLUME\/*\/SFSymbols.framework\/SFSymbols",
    "name" : "SFSymbols",
    "CFBundleVersion" : "190.4.0.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4818649088,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreUI",
    "size" : 1228800,
    "uuid" : "3e3d5876-25c1-301b-9951-0171503980fb",
    "path" : "\/Volumes\/VOLUME\/*\/CoreUI.framework\/CoreUI",
    "name" : "CoreUI",
    "CFBundleVersion" : "975"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4742299648,
    "CFBundleShortVersionString" : "23.40.26",
    "CFBundleIdentifier" : "com.apple.dt.DeveloperToolsSupport",
    "size" : 81920,
    "uuid" : "c39a6a22-0195-3f82-b00a-4e5266fe59a9",
    "path" : "\/Volumes\/VOLUME\/*\/DeveloperToolsSupport.framework\/DeveloperToolsSupport",
    "name" : "DeveloperToolsSupport",
    "CFBundleVersion" : "23.40.26"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4742512640,
    "CFBundleShortVersionString" : "393.5.7",
    "CFBundleIdentifier" : "com.apple.IOSurface",
    "size" : 81920,
    "uuid" : "535ad6ac-99aa-3336-9381-4b6876dd3756",
    "path" : "\/Volumes\/VOLUME\/*\/IOSurface.framework\/IOSurface",
    "name" : "IOSurface",
    "CFBundleVersion" : "393.5.7"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4823957504,
    "CFBundleShortVersionString" : "7.4.25",
    "CFBundleIdentifier" : "com.apple.RenderBox",
    "size" : 1490944,
    "uuid" : "208cb2c6-a896-3bc7-9742-ab21e55b5b4c",
    "path" : "\/Volumes\/VOLUME\/*\/RenderBox.framework\/RenderBox",
    "name" : "RenderBox",
    "CFBundleVersion" : "7.4.25"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4816076800,
    "size" : 737280,
    "uuid" : "5903316e-f00d-3867-90f0-d5685fe6f19e",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftAccelerate.dylib",
    "name" : "libswiftAccelerate.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4811653120,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreSVG",
    "size" : 229376,
    "uuid" : "07af424f-05af-3d53-b64d-f4dbf15965bb",
    "path" : "\/Volumes\/VOLUME\/*\/CoreSVG.framework\/CoreSVG",
    "name" : "CoreSVG",
    "CFBundleVersion" : "341"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4812931072,
    "CFBundleShortVersionString" : "3.10.12",
    "CFBundleIdentifier" : "com.apple.TextureIO",
    "size" : 622592,
    "uuid" : "552b33a5-1d90-3cc6-9440-3c439a08e5cb",
    "path" : "\/Volumes\/VOLUME\/*\/TextureIO.framework\/TextureIO",
    "name" : "TextureIO",
    "CFBundleVersion" : "3.10.12"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4821221376,
    "CFBundleShortVersionString" : "1.8",
    "CFBundleIdentifier" : "com.apple.CoreVideo",
    "size" : 311296,
    "uuid" : "0d0a426e-0f95-36f9-88cc-419a5a7027eb",
    "path" : "\/Volumes\/VOLUME\/*\/CoreVideo.framework\/CoreVideo",
    "name" : "CoreVideo",
    "CFBundleVersion" : "734.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4857823232,
    "CFBundleShortVersionString" : "4.13.0",
    "CFBundleIdentifier" : "com.apple.ColorSync",
    "size" : 1589248,
    "uuid" : "c13a197d-40e1-3553-94a5-0ff3488ee530",
    "path" : "\/Volumes\/VOLUME\/*\/ColorSync.framework\/ColorSync",
    "name" : "ColorSync",
    "CFBundleVersion" : "3813.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4596432896,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MetalPerformanceShaders.MetalPerformanceShaders",
    "size" : 16384,
    "uuid" : "61b163ae-1acb-3312-a40c-29ca734d2a04",
    "path" : "\/Volumes\/VOLUME\/*\/MetalPerformanceShaders.framework\/MetalPerformanceShaders",
    "name" : "MetalPerformanceShaders",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4740055040,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GraphVisualizer",
    "size" : 65536,
    "uuid" : "9864fca7-0668-3b53-944f-f3089bbe97a4",
    "path" : "\/Volumes\/VOLUME\/*\/GraphVisualizer.framework\/GraphVisualizer",
    "name" : "GraphVisualizer",
    "CFBundleVersion" : "307"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4945805312,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreMedia",
    "size" : 1327104,
    "uuid" : "349285b5-cf08-3c24-95db-22141ac8dfef",
    "path" : "\/Volumes\/VOLUME\/*\/CoreMedia.framework\/CoreMedia",
    "name" : "CoreMedia",
    "CFBundleVersion" : "3320.8.1.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4954292224,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.VideoToolbox",
    "size" : 4816896,
    "uuid" : "18cfa6e5-f151-326e-8ed4-b69c57d47a3e",
    "path" : "\/Volumes\/VOLUME\/*\/VideoToolbox.framework\/VideoToolbox",
    "name" : "VideoToolbox",
    "CFBundleVersion" : "3320.8.1.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4768595968,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppleJPEG",
    "size" : 278528,
    "uuid" : "87b4ff35-0f75-3b2d-bfb0-19a3d4789ccd",
    "path" : "\/Volumes\/VOLUME\/*\/AppleJPEG.framework\/AppleJPEG",
    "name" : "AppleJPEG",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4742758400,
    "size" : 114688,
    "uuid" : "87229499-3658-3dc7-acc0-c801ca584353",
    "path" : "\/Volumes\/VOLUME\/*\/libexpat.1.dylib",
    "name" : "libexpat.1.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4822040576,
    "size" : 557056,
    "uuid" : "b376feaf-79b3-36d6-a323-24d38fa42cd0",
    "path" : "\/Volumes\/VOLUME\/*\/libate.dylib",
    "name" : "libate.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4960239616,
    "size" : 2719744,
    "uuid" : "fc371824-605c-3fef-a834-2f93ba870139",
    "path" : "\/Volumes\/VOLUME\/*\/FontServices.framework\/libFontParser.dylib",
    "name" : "libFontParser.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4812111872,
    "size" : 114688,
    "uuid" : "2c742cf4-4a39-3f81-a906-785ace4dbe28",
    "path" : "\/Volumes\/VOLUME\/*\/libhvf.dylib",
    "name" : "libhvf.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4855857152,
    "CFBundleShortVersionString" : "0.0.1",
    "CFBundleIdentifier" : "com.apple.ParsingInternal",
    "size" : 884736,
    "uuid" : "a481b606-b9f5-3604-b53a-2d7845906c58",
    "path" : "\/Volumes\/VOLUME\/*\/ParsingInternal.framework\/ParsingInternal",
    "name" : "ParsingInternal",
    "CFBundleVersion" : "5026.5.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4760600576,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.applesauce",
    "size" : 147456,
    "uuid" : "5e39b5b7-e3e8-368a-967d-1f9805e1b4c0",
    "path" : "\/Volumes\/VOLUME\/*\/AppleSauce.framework\/AppleSauce",
    "name" : "AppleSauce"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4964433920,
    "CFBundleShortVersionString" : "8.1",
    "CFBundleIdentifier" : "com.apple.vImage",
    "size" : 3850240,
    "uuid" : "b781652e-4892-34c1-9f0e-10dd4aaee111",
    "path" : "\/Volumes\/VOLUME\/*\/Accelerate.framework\/Frameworks\/vImage.framework\/vImage",
    "name" : "vImage"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4404183040,
    "CFBundleShortVersionString" : "3.11",
    "CFBundleIdentifier" : "com.apple.Accelerate.vecLib",
    "size" : 16384,
    "uuid" : "eec2cb2a-5e39-305f-8ab6-453744ff51b2",
    "path" : "\/Volumes\/VOLUME\/*\/Accelerate.framework\/Frameworks\/vecLib.framework\/vecLib",
    "name" : "vecLib",
    "CFBundleVersion" : "vecLib 3.11"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4822695936,
    "size" : 376832,
    "uuid" : "38326696-c379-3b0e-ae95-60542ba1c2cb",
    "path" : "\/Volumes\/VOLUME\/*\/Accelerate.framework\/Frameworks\/vecLib.framework\/libvMisc.dylib",
    "name" : "libvMisc.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4948344832,
    "size" : 1867776,
    "uuid" : "1ac04688-4830-31df-b1e5-1251da9d184a",
    "path" : "\/Volumes\/VOLUME\/*\/Accelerate.framework\/Frameworks\/vecLib.framework\/libBLAS.dylib",
    "name" : "libBLAS.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4740235264,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.FramePacing",
    "size" : 49152,
    "uuid" : "49bf682c-c61a-35c1-a158-99dab5c0bb54",
    "path" : "\/Volumes\/VOLUME\/*\/FramePacing.framework\/FramePacing",
    "name" : "FramePacing",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4596514816,
    "size" : 32768,
    "uuid" : "b2cce0a8-8ade-314e-9a0d-b1791c38d09f",
    "path" : "\/Volumes\/VOLUME\/*\/OpenGLES.framework\/libCoreFSCache.dylib",
    "name" : "libCoreFSCache.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4818255872,
    "size" : 262144,
    "uuid" : "5e58cbb4-eb52-3588-9568-10853aec561c",
    "path" : "\/Volumes\/VOLUME\/*\/libllvm-flatbuffers.dylib",
    "name" : "libllvm-flatbuffers.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4655120384,
    "size" : 32768,
    "uuid" : "800fc657-e57b-3907-9d36-7eee87695a38",
    "path" : "\/Volumes\/VOLUME\/*\/GPUCompiler.framework\/Libraries\/libGPUCompilerUtils.dylib",
    "name" : "libGPUCompilerUtils.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4742938624,
    "size" : 49152,
    "uuid" : "ae7f86ce-a1c3-3689-b3ce-0c64947f3399",
    "path" : "\/Volumes\/VOLUME\/*\/OpenGLES.framework\/libGFXShared.dylib",
    "name" : "libGFXShared.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4823138304,
    "size" : 245760,
    "uuid" : "09bddc43-7a19-3574-a60d-f70744c94a88",
    "path" : "\/Volumes\/VOLUME\/*\/OpenGLES.framework\/libGLImage.dylib",
    "name" : "libGLImage.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4682547200,
    "size" : 16384,
    "uuid" : "c0c75ea7-580a-3954-96c1-6bd07f6556f7",
    "path" : "\/Volumes\/VOLUME\/*\/OpenGLES.framework\/libCVMSPluginSupport.dylib",
    "name" : "libCVMSPluginSupport.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4944265216,
    "size" : 884736,
    "uuid" : "79b82d12-8af9-3952-8cb6-553300a44e6d",
    "path" : "\/Volumes\/VOLUME\/*\/Accelerate.framework\/Frameworks\/vecLib.framework\/libvDSP.dylib",
    "name" : "libvDSP.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4985454592,
    "size" : 15712256,
    "uuid" : "a0307ce7-d8c4-3922-bd3e-5e93b30de384",
    "path" : "\/Volumes\/VOLUME\/*\/Accelerate.framework\/Frameworks\/vecLib.framework\/libLAPACK.dylib",
    "name" : "libLAPACK.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4768989184,
    "size" : 81920,
    "uuid" : "c9a491df-6b52-3f80-908f-51bed4497489",
    "path" : "\/Volumes\/VOLUME\/*\/Accelerate.framework\/Frameworks\/vecLib.framework\/libLinearAlgebra.dylib",
    "name" : "libLinearAlgebra.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4812455936,
    "size" : 163840,
    "uuid" : "441afa55-ac6c-356e-b4e0-fb45fc06a5c4",
    "path" : "\/Volumes\/VOLUME\/*\/Accelerate.framework\/Frameworks\/vecLib.framework\/libSparseBLAS.dylib",
    "name" : "libSparseBLAS.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4682629120,
    "size" : 32768,
    "uuid" : "cd2c1865-4a2c-3cec-a18f-65f31b401d64",
    "path" : "\/Volumes\/VOLUME\/*\/Accelerate.framework\/Frameworks\/vecLib.framework\/libQuadrature.dylib",
    "name" : "libQuadrature.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5002182656,
    "size" : 8896512,
    "uuid" : "e7c77a77-5e3d-30e9-8ef4-525a5d42ecad",
    "path" : "\/Volumes\/VOLUME\/*\/Accelerate.framework\/Frameworks\/vecLib.framework\/libBNNS.dylib",
    "name" : "libBNNS.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4952031232,
    "size" : 1474560,
    "uuid" : "31390263-73e7-304b-b2e7-e86f3889f9c7",
    "path" : "\/Volumes\/VOLUME\/*\/Accelerate.framework\/Frameworks\/vecLib.framework\/libSparse.dylib",
    "name" : "libSparse.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5011750912,
    "CFBundleShortVersionString" : "3520.4",
    "CFBundleIdentifier" : "com.apple.MIL",
    "size" : 7012352,
    "uuid" : "bb194719-272b-38df-a914-4c12ff180bab",
    "path" : "\/Volumes\/VOLUME\/*\/MIL.framework\/MIL",
    "name" : "MIL",
    "CFBundleVersion" : "3520.4.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4968726528,
    "CFBundleShortVersionString" : "113",
    "CFBundleIdentifier" : "com.apple.Accounts",
    "size" : 507904,
    "uuid" : "7d16e7b4-ddb7-3fa8-b574-c18948b32b7d",
    "path" : "\/Volumes\/VOLUME\/*\/Accounts.framework\/Accounts",
    "name" : "Accounts",
    "CFBundleVersion" : "113"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4859789312,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.AppSupport",
    "size" : 278528,
    "uuid" : "bfded03a-07d9-3892-b1ed-cb6133fb9763",
    "path" : "\/Volumes\/VOLUME\/*\/AppSupport.framework\/AppSupport",
    "name" : "AppSupport",
    "CFBundleVersion" : "29"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4943265792,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.facetimeservices",
    "size" : 344064,
    "uuid" : "3c2844a5-9f94-3755-9091-12cfbc86ef67",
    "path" : "\/Volumes\/VOLUME\/*\/FTServices.framework\/FTServices",
    "name" : "FTServices",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4826693632,
    "CFBundleShortVersionString" : "4.0",
    "CFBundleIdentifier" : "com.apple.GSS",
    "size" : 196608,
    "uuid" : "ba996252-0c71-3efa-a7f4-dfa92f9e61da",
    "path" : "\/Volumes\/VOLUME\/*\/GSS.framework\/GSS",
    "name" : "GSS",
    "CFBundleVersion" : "2.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4950376448,
    "CFBundleShortVersionString" : "4.0",
    "CFBundleIdentifier" : "com.apple.Heimdal",
    "size" : 475136,
    "uuid" : "a58e4a04-8042-30f5-9e13-95ebb379e650",
    "path" : "\/Volumes\/VOLUME\/*\/Heimdal.framework\/Heimdal",
    "name" : "Heimdal",
    "CFBundleVersion" : "2.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5024284672,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.InternationalSupport",
    "size" : 3194880,
    "uuid" : "50e26b88-046e-34e3-b5a4-2ddaf08de56b",
    "path" : "\/Volumes\/VOLUME\/*\/InternationalSupport.framework\/InternationalSupport",
    "name" : "InternationalSupport",
    "CFBundleVersion" : "74"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4969807872,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.NetworkServiceProxyFramework",
    "size" : 393216,
    "uuid" : "fddebaec-5d11-354e-9e64-a0a7f0cd501b",
    "path" : "\/Volumes\/VOLUME\/*\/NetworkServiceProxy.framework\/NetworkServiceProxy",
    "name" : "NetworkServiceProxy",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4857004032,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.StreamingZip",
    "size" : 114688,
    "uuid" : "979a7c4d-48fe-3cdf-9cdf-a998830c97a2",
    "path" : "\/Volumes\/VOLUME\/*\/StreamingZip.framework\/StreamingZip",
    "name" : "StreamingZip",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4823662592,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CorePhoneNumbers",
    "size" : 65536,
    "uuid" : "01b9c4ca-f2ab-37fb-81a6-3a01746aa95c",
    "path" : "\/Volumes\/VOLUME\/*\/CorePhoneNumbers.framework\/CorePhoneNumbers",
    "name" : "CorePhoneNumbers",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4735729664,
    "size" : 16384,
    "uuid" : "1daff25b-fabf-3b86-ba98-f8e456e2da9c",
    "path" : "\/Volumes\/VOLUME\/*\/libCTGreenTeaLogger.dylib",
    "name" : "libCTGreenTeaLogger.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4974067712,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppleAccount",
    "size" : 1916928,
    "uuid" : "f7040629-e024-328b-8f20-2c59fec076f4",
    "path" : "\/Volumes\/VOLUME\/*\/AppleAccount.framework\/AppleAccount",
    "name" : "AppleAccount",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4977459200,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SpringBoardServices",
    "size" : 704512,
    "uuid" : "8e7d0640-564d-35d4-b891-1715f577e40c",
    "path" : "\/Volumes\/VOLUME\/*\/SpringBoardServices.framework\/SpringBoardServices",
    "name" : "SpringBoardServices",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4970692608,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SetupAssistant",
    "size" : 360448,
    "uuid" : "49c3618f-c6a6-3762-8937-739dc2d31ab7",
    "path" : "\/Volumes\/VOLUME\/*\/SetupAssistant.framework\/SetupAssistant",
    "name" : "SetupAssistant",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4982358016,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.ids",
    "size" : 2015232,
    "uuid" : "1404340a-d5f0-3f5d-ac4d-da617a244821",
    "path" : "\/Volumes\/VOLUME\/*\/IDS.framework\/IDS",
    "name" : "IDS",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4943839232,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AAAFoundation",
    "size" : 131072,
    "uuid" : "628a7e63-8d42-3fb7-82f0-f2849c68e581",
    "path" : "\/Volumes\/VOLUME\/*\/AAAFoundation.framework\/AAAFoundation",
    "name" : "AAAFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4945264640,
    "CFBundleShortVersionString" : "4.0",
    "CFBundleIdentifier" : "com.apple.aps.framework",
    "size" : 180224,
    "uuid" : "6a4bb4ed-c1e2-39f8-889a-447dcf87d969",
    "path" : "\/Volumes\/VOLUME\/*\/ApplePushService.framework\/ApplePushService",
    "name" : "ApplePushService",
    "CFBundleVersion" : "4.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5043273728,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AuthKit",
    "size" : 2064384,
    "uuid" : "38d24749-f2c7-3be6-9b2a-f0a9d93e3d7c",
    "path" : "\/Volumes\/VOLUME\/*\/AuthKit.framework\/AuthKit",
    "name" : "AuthKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4971511808,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AAAFoundationSwift",
    "size" : 360448,
    "uuid" : "8b0fa611-9b35-32b3-9aef-a9aa6ffa8fde",
    "path" : "\/Volumes\/VOLUME\/*\/AAAFoundationSwift.framework\/AAAFoundationSwift",
    "name" : "AAAFoundationSwift",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4857249792,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppleIDSSOAuthentication",
    "size" : 65536,
    "uuid" : "6e22b159-4f4d-3de4-929c-e80bea8fa582",
    "path" : "\/Volumes\/VOLUME\/*\/AppleIDSSOAuthentication.framework\/AppleIDSSOAuthentication",
    "name" : "AppleIDSSOAuthentication",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4972216320,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.devicemanagementclient.DMCEnrollmentLibrary",
    "size" : 278528,
    "uuid" : "18555ca2-348b-31d1-9eaa-7ed0f46352e4",
    "path" : "\/Volumes\/VOLUME\/*\/DMCEnrollmentLibrary.framework\/DMCEnrollmentLibrary",
    "name" : "DMCEnrollmentLibrary",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4972822528,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.devicemanagementclient.DMCUtilities",
    "size" : 327680,
    "uuid" : "0c9dddd1-fe07-39a3-acf8-7ce71b9d91de",
    "path" : "\/Volumes\/VOLUME\/*\/DMCUtilities.framework\/DMCUtilities",
    "name" : "DMCUtilities",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4857430016,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.FeatureFlagsSupport",
    "size" : 81920,
    "uuid" : "5947419d-365c-3517-8dde-3c6c5a82fd08",
    "path" : "\/Volumes\/VOLUME\/*\/FeatureFlagsSupport.framework\/FeatureFlagsSupport",
    "name" : "FeatureFlagsSupport",
    "CFBundleVersion" : "103"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4953784320,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.devicemanagementclient.MDMClientLibrary",
    "size" : 196608,
    "uuid" : "f6ef8d80-7bcf-3f7e-a052-5ea0e06f2782",
    "path" : "\/Volumes\/VOLUME\/*\/MDMClientLibrary.framework\/MDMClientLibrary",
    "name" : "MDMClientLibrary",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4857643008,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.devicemanagementclient.DEPClientLibrary",
    "size" : 49152,
    "uuid" : "7c49cc7b-0639-31c6-ad09-4384fd00eb57",
    "path" : "\/Volumes\/VOLUME\/*\/DEPClientLibrary.framework\/DEPClientLibrary",
    "name" : "DEPClientLibrary",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5039521792,
    "CFBundleShortVersionString" : "1000.4.11",
    "CFBundleIdentifier" : "com.apple.FrontBoardServices",
    "size" : 835584,
    "uuid" : "e6e4db42-d8c1-3edf-a45a-c15655031659",
    "path" : "\/Volumes\/VOLUME\/*\/FrontBoardServices.framework\/FrontBoardServices",
    "name" : "FrontBoardServices",
    "CFBundleVersion" : "1000.4.11"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5050286080,
    "CFBundleShortVersionString" : "97",
    "CFBundleIdentifier" : "com.apple.ExtensionFoundation",
    "size" : 1277952,
    "uuid" : "6f30865b-f3ca-32b7-b9be-3f6b848cdbc1",
    "path" : "\/Volumes\/VOLUME\/*\/ExtensionFoundation.framework\/ExtensionFoundation",
    "name" : "ExtensionFoundation",
    "CFBundleVersion" : "97"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4951146496,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.xpc.AppServerSupport",
    "size" : 65536,
    "uuid" : "a49f3ab3-26b8-3830-9eb4-e7c2b1fd8c28",
    "path" : "\/Volumes\/VOLUME\/*\/AppServerSupport.framework\/AppServerSupport",
    "name" : "AppServerSupport",
    "CFBundleVersion" : "3102.120.13"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4980326400,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BoardServices",
    "size" : 540672,
    "uuid" : "81f6efde-df0d-38db-966e-3eec0b02de41",
    "path" : "\/Volumes\/VOLUME\/*\/BoardServices.framework\/BoardServices",
    "name" : "BoardServices",
    "CFBundleVersion" : "732.1.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4973592576,
    "CFBundleIdentifier" : "com.apple.OSEligibility",
    "size" : 163840,
    "uuid" : "6ecacb84-4d97-354f-ad06-02983ea0e314",
    "path" : "\/Volumes\/VOLUME\/*\/OSEligibility.framework\/OSEligibility",
    "name" : "OSEligibility",
    "CFBundleVersion" : "319.122.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5047025664,
    "CFBundleShortVersionString" : "494",
    "CFBundleIdentifier" : "com.apple.IconServices",
    "size" : 606208,
    "uuid" : "e87ab1e8-3ba0-3a75-b112-36407f8511a6",
    "path" : "\/Volumes\/VOLUME\/*\/IconServices.framework\/IconServices",
    "name" : "IconServices",
    "CFBundleVersion" : "494"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4578852864,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.FeatureFlags",
    "size" : 16384,
    "uuid" : "7de1512e-94ce-3891-a98f-d7d7af0e7ef4",
    "path" : "\/Volumes\/VOLUME\/*\/FeatureFlags.framework\/FeatureFlags",
    "name" : "FeatureFlags",
    "CFBundleVersion" : "103"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4951605248,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TCC",
    "size" : 98304,
    "uuid" : "7d813155-8c9c-3f02-b5aa-234349c93ff6",
    "path" : "\/Volumes\/VOLUME\/*\/TCC.framework\/TCC",
    "name" : "TCC",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4979769344,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.pluginkit.framework",
    "size" : 229376,
    "uuid" : "af9107a6-46f4-3971-95ba-32049b20263d",
    "path" : "\/Volumes\/VOLUME\/*\/PlugInKit.framework\/PlugInKit",
    "name" : "PlugInKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4951326720,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AssertionServices",
    "size" : 65536,
    "uuid" : "0d4cd8d7-361b-37c2-8121-21d6ad88305f",
    "path" : "\/Volumes\/VOLUME\/*\/AssertionServices.framework\/AssertionServices",
    "name" : "AssertionServices",
    "CFBundleVersion" : "1015.100.16"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4579770368,
    "size" : 16384,
    "uuid" : "bfd2f2e4-789a-357a-b896-2a030964b767",
    "path" : "\/Volumes\/VOLUME\/*\/libswift_DarwinFoundation2.dylib",
    "name" : "libswift_DarwinFoundation2.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4581359616,
    "size" : 16384,
    "uuid" : "3e409e5d-7b28-3cda-87ce-d9f8925611e9",
    "path" : "\/Volumes\/VOLUME\/*\/libswift_DarwinFoundation3.dylib",
    "name" : "libswift_DarwinFoundation3.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4979343360,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.mobileicons.framework",
    "size" : 49152,
    "uuid" : "6fbac125-d8ee-36ce-8200-1833d1f6e844",
    "path" : "\/Volumes\/VOLUME\/*\/MobileIcons.framework\/MobileIcons",
    "name" : "MobileIcons",
    "CFBundleVersion" : "372.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5059805184,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AssistantServices",
    "size" : 2686976,
    "uuid" : "2c8b16bf-2fdf-320d-a653-aae3e9f4bccb",
    "path" : "\/Volumes\/VOLUME\/*\/AssistantServices.framework\/AssistantServices",
    "name" : "AssistantServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5048401920,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MobileAssets",
    "size" : 868352,
    "uuid" : "e463562c-cd65-3040-93fd-5e26d6f83d1e",
    "path" : "\/Volumes\/VOLUME\/*\/MobileAsset.framework\/MobileAsset",
    "name" : "MobileAsset",
    "CFBundleVersion" : "1837.122.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5066031104,
    "size" : 491520,
    "uuid" : "babc8e8d-17bb-3971-bc2a-1a7ab6f3846b",
    "path" : "\/Volumes\/VOLUME\/*\/FontServices.framework\/libGSFontCache.dylib",
    "name" : "libGSFontCache.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4979507200,
    "size" : 49152,
    "uuid" : "ced4fa95-d1e1-3f46-b85d-21528e5648bc",
    "path" : "\/Volumes\/VOLUME\/*\/FontServices.framework\/libGSFont.dylib",
    "name" : "libGSFont.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5041422336,
    "size" : 212992,
    "uuid" : "1501b4f8-a995-3de7-829d-e4795768ed1f",
    "path" : "\/Volumes\/VOLUME\/*\/libAccessibility.dylib",
    "name" : "libAccessibility.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5042061312,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.OTSVG",
    "size" : 245760,
    "uuid" : "45d877da-fb6e-3ac0-8687-1e66fd1f9f7c",
    "path" : "\/Volumes\/VOLUME\/*\/OTSVG.framework\/OTSVG",
    "name" : "OTSVG"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4981571584,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.FontServices",
    "size" : 98304,
    "uuid" : "171a9f66-d54a-3347-9943-7b3fc671c28f",
    "path" : "\/Volumes\/VOLUME\/*\/FontServices.framework\/FontServices",
    "name" : "FontServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5054496768,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SoftwareUpdateCoreSupport",
    "size" : 376832,
    "uuid" : "b0232303-6b52-3cb6-8ce4-1edf0a723dda",
    "path" : "\/Volumes\/VOLUME\/*\/SoftwareUpdateCoreSupport.framework\/SoftwareUpdateCoreSupport",
    "name" : "SoftwareUpdateCoreSupport",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4981833728,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SoftwareUpdateCoreConnect",
    "size" : 81920,
    "uuid" : "d7ce0a6c-a0af-31de-96d7-bcb84dec59b5",
    "path" : "\/Volumes\/VOLUME\/*\/SoftwareUpdateCoreConnect.framework\/SoftwareUpdateCoreConnect",
    "name" : "SoftwareUpdateCoreConnect",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4981309440,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ist.IdleTimerServices",
    "size" : 49152,
    "uuid" : "e24a42f8-548b-34c8-a7b8-a6dd0e670bb5",
    "path" : "\/Volumes\/VOLUME\/*\/IdleTimerServices.framework\/IdleTimerServices",
    "name" : "IdleTimerServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5057085440,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BackBoardServices",
    "size" : 720896,
    "uuid" : "9db8c374-0cc2-3b5a-966d-02dc9d4bb870",
    "path" : "\/Volumes\/VOLUME\/*\/BackBoardServices.framework\/BackBoardServices",
    "name" : "BackBoardServices",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4823826432,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GraphicsServices",
    "size" : 32768,
    "uuid" : "95c64786-b053-33db-914f-5fa4b6cb8122",
    "path" : "\/Volumes\/VOLUME\/*\/GraphicsServices.framework\/GraphicsServices",
    "name" : "GraphicsServices",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5042667520,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MediaAccessibility",
    "size" : 81920,
    "uuid" : "15d918c8-2c16-39ab-bba0-20e2be9d46b0",
    "path" : "\/Volumes\/VOLUME\/*\/MediaAccessibility.framework\/MediaAccessibility",
    "name" : "MediaAccessibility",
    "CFBundleVersion" : "153"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4743970816,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.perf.apple.SignpostMetrics",
    "size" : 16384,
    "uuid" : "59b4a769-22a3-38fe-b82a-d97d9edff667",
    "path" : "\/Volumes\/VOLUME\/*\/SignpostMetrics.framework\/SignpostMetrics",
    "name" : "SignpostMetrics",
    "CFBundleVersion" : "174.8"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5071421440,
    "CFBundleShortVersionString" : "16.0",
    "CFBundleIdentifier" : "com.apple.Symbolication",
    "size" : 1015808,
    "uuid" : "ba9446ed-a753-3c21-b28d-341199121633",
    "path" : "\/Volumes\/VOLUME\/*\/Symbolication.framework\/Symbolication",
    "name" : "Symbolication",
    "CFBundleVersion" : "64575.70.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4812718080,
    "CFBundleShortVersionString" : "1031",
    "CFBundleIdentifier" : "com.apple.CoreSimulator.SimFramebufferClient",
    "size" : 32768,
    "uuid" : "47541bb2-5147-3a08-967f-3aff4cedf5b9",
    "path" : "\/Volumes\/VOLUME\/*\/SimFramebufferClient.framework\/SimFramebufferClient",
    "name" : "SimFramebufferClient",
    "CFBundleVersion" : "1031"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5042896896,
    "size" : 65536,
    "uuid" : "4abac712-63f4-3f83-bc6e-e9b286e2cf5c",
    "path" : "\/Volumes\/VOLUME\/*\/libperfcheck.dylib",
    "name" : "libperfcheck.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5043060736,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.perfdata",
    "size" : 65536,
    "uuid" : "c5b809d5-8904-3eaf-9760-57059964e730",
    "path" : "\/Volumes\/VOLUME\/*\/perfdata.framework\/perfdata",
    "name" : "perfdata",
    "CFBundleVersion" : "130"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5075861504,
    "CFBundleShortVersionString" : "16.0",
    "CFBundleIdentifier" : "com.apple.CoreSymbolication",
    "size" : 1277952,
    "uuid" : "abe7bdfd-a70a-3625-8ac7-6d8634ba97af",
    "path" : "\/Volumes\/VOLUME\/*\/CoreSymbolication.framework\/CoreSymbolication",
    "name" : "CoreSymbolication",
    "CFBundleVersion" : "64575.53.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4951883776,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MallocStackLogging",
    "size" : 49152,
    "uuid" : "3ef1e9de-b6bc-3c5d-ae18-3c1710c42c5d",
    "path" : "\/Volumes\/VOLUME\/*\/MallocStackLogging.framework\/MallocStackLogging",
    "name" : "MallocStackLogging",
    "CFBundleVersion" : "65000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5083103232,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SAObjects",
    "size" : 819200,
    "uuid" : "78325d36-42ad-319a-941a-86b97906717b",
    "path" : "\/Volumes\/VOLUME\/*\/SAObjects.framework\/SAObjects",
    "name" : "SAObjects",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5087936512,
    "CFBundleShortVersionString" : "1.8",
    "CFBundleIdentifier" : "com.apple.audio.toolbox.AudioToolbox",
    "size" : 1572864,
    "uuid" : "85369dbc-8b45-3083-b507-0586c22077e0",
    "path" : "\/Volumes\/VOLUME\/*\/AudioToolbox.framework\/AudioToolbox",
    "name" : "AudioToolbox",
    "CFBundleVersion" : "1.8"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5099143168,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MediaRemote",
    "size" : 4014080,
    "uuid" : "487130f4-7256-35a9-b6ae-3fbe68631db2",
    "path" : "\/Volumes\/VOLUME\/*\/MediaRemote.framework\/MediaRemote",
    "name" : "MediaRemote",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5139759104,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.siri.SiriInstrumentation",
    "size" : 14680064,
    "uuid" : "ff3343b7-1c7f-3424-85a6-9583db7d37bc",
    "path" : "\/Volumes\/VOLUME\/*\/SiriInstrumentation.framework\/SiriInstrumentation",
    "name" : "SiriInstrumentation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5073453056,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.siri.SiriAnalytics",
    "size" : 950272,
    "uuid" : "5b323cda-efe9-3a9a-b79d-87cae9356eac",
    "path" : "\/Volumes\/VOLUME\/*\/SiriAnalytics.framework\/SiriAnalytics",
    "name" : "SiriAnalytics",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5090557952,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.siri.SiriTTSService",
    "size" : 1736704,
    "uuid" : "8b7c89b3-3504-33cf-b04d-cd07392e70ef",
    "path" : "\/Volumes\/VOLUME\/*\/SiriTTSService.framework\/SiriTTSService",
    "name" : "SiriTTSService",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5055414272,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.crossdevicearbitration",
    "size" : 294912,
    "uuid" : "9960338e-0fe0-3ef4-983a-0b14f99d82d6",
    "path" : "\/Volumes\/VOLUME\/*\/SiriCrossDeviceArbitration.framework\/SiriCrossDeviceArbitration",
    "name" : "SiriCrossDeviceArbitration",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5053972480,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.skp.FeedbackLogger",
    "size" : 180224,
    "uuid" : "73133fa7-835e-39b8-ad47-995419a2bd0b",
    "path" : "\/Volumes\/VOLUME\/*\/FeedbackLogger.framework\/FeedbackLogger",
    "name" : "FeedbackLogger",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5078269952,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.proactive.support.ProactiveSupport",
    "size" : 540672,
    "uuid" : "16f8d83f-20cf-3604-baf1-f3ab04e16589",
    "path" : "\/Volumes\/VOLUME\/*\/ProactiveSupport.framework\/ProactiveSupport",
    "name" : "ProactiveSupport",
    "CFBundleVersion" : "418.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4744167424,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.private.FaceTimeNameUtility",
    "size" : 16384,
    "uuid" : "d19cdf2e-e57b-3bc1-935d-c286be8ddbc3",
    "path" : "\/Volumes\/VOLUME\/*\/FaceTimeNameUtility.framework\/FaceTimeNameUtility",
    "name" : "FaceTimeNameUtility",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5058756608,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.voiceservices",
    "size" : 229376,
    "uuid" : "351d319e-302f-3c51-b014-20177ae94451",
    "path" : "\/Volumes\/VOLUME\/*\/VoiceServices.framework\/VoiceServices",
    "name" : "VoiceServices",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5069406208,
    "size" : 245760,
    "uuid" : "04f945f8-b385-3e21-86f0-d74f23451bf2",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftAVFoundation.dylib",
    "name" : "libswiftAVFoundation.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5053579264,
    "size" : 49152,
    "uuid" : "40519410-d98a-36ae-adf6-6ebc340d29dc",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftCoreMIDI.dylib",
    "name" : "libswiftCoreMIDI.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5121605632,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Intents",
    "size" : 6160384,
    "uuid" : "577c0fa6-4e32-3744-83bf-5cd298b99361",
    "path" : "\/Volumes\/VOLUME\/*\/Intents.framework\/Intents",
    "name" : "Intents",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5056397312,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreLocation.LocationEssentials",
    "size" : 180224,
    "uuid" : "af0811fb-866c-31e4-990d-cc1d729b619b",
    "path" : "\/Volumes\/VOLUME\/*\/_LocationEssentials.framework\/_LocationEssentials",
    "name" : "_LocationEssentials",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5079416832,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.UIKitServices",
    "size" : 229376,
    "uuid" : "02076aed-5b9a-384c-88e0-b967a6164421",
    "path" : "\/Volumes\/VOLUME\/*\/UIKitServices.framework\/UIKitServices",
    "name" : "UIKitServices",
    "CFBundleVersion" : "9126.5.5.2.103"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5081382912,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.UnifiedAssetFramework",
    "size" : 753664,
    "uuid" : "c50b0466-2322-3850-bdf0-b66199043046",
    "path" : "\/Volumes\/VOLUME\/*\/UnifiedAssetFramework.framework\/UnifiedAssetFramework",
    "name" : "UnifiedAssetFramework",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5113823232,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.audio.AudioToolboxCore",
    "size" : 3588096,
    "uuid" : "9afb8126-9ebf-3560-816f-bac1c89e858d",
    "path" : "\/Volumes\/VOLUME\/*\/AudioToolboxCore.framework\/AudioToolboxCore",
    "name" : "AudioToolboxCore"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5080039424,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.audio.AudioSession",
    "size" : 344064,
    "uuid" : "885ec865-72bb-3e61-b4a2-ebe16d3fcfe6",
    "path" : "\/Volumes\/VOLUME\/*\/AudioSession.framework\/AudioSession",
    "name" : "AudioSession"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5056086016,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MediaExperience",
    "size" : 49152,
    "uuid" : "d1f3768a-15fd-3fba-be17-6128e4247175",
    "path" : "\/Volumes\/VOLUME\/*\/MediaExperience.framework\/MediaExperience",
    "name" : "MediaExperience",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5056708608,
    "size" : 98304,
    "uuid" : "bf2d4280-8d39-3030-b724-52de3617cca3",
    "path" : "\/Volumes\/VOLUME\/*\/libAudioStatistics.dylib",
    "name" : "libAudioStatistics.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5095211008,
    "CFBundleShortVersionString" : "2.0",
    "CFBundleIdentifier" : "com.apple.audio.midi.CoreMIDI",
    "size" : 753664,
    "uuid" : "1e3f7e76-d21f-3e03-8a22-3994c85249a2",
    "path" : "\/Volumes\/VOLUME\/*\/CoreMIDI.framework\/CoreMIDI",
    "name" : "CoreMIDI",
    "CFBundleVersion" : "88"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5070766080,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.audio.caulk",
    "size" : 163840,
    "uuid" : "21528ae7-06a1-398d-a0a8-90236d3971b1",
    "path" : "\/Volumes\/VOLUME\/*\/caulk.framework\/caulk",
    "name" : "caulk"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5185568768,
    "CFBundleShortVersionString" : "5.0",
    "CFBundleIdentifier" : "com.apple.audio.CoreAudio",
    "size" : 4440064,
    "uuid" : "398a1360-d118-3052-883a-72dd43598702",
    "path" : "\/Volumes\/VOLUME\/*\/CoreAudio.framework\/CoreAudio",
    "name" : "CoreAudio",
    "CFBundleVersion" : "5.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5070225408,
    "size" : 147456,
    "uuid" : "83ec40db-c580-30a0-acfb-309e576526b5",
    "path" : "\/Volumes\/VOLUME\/*\/libAudioToolboxUtility.dylib",
    "name" : "libAudioToolboxUtility.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5096570880,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AVRouting",
    "size" : 311296,
    "uuid" : "dabb8959-05be-3be5-b9be-1b41239be0ea",
    "path" : "\/Volumes\/VOLUME\/*\/AVRouting.framework\/AVRouting",
    "name" : "AVRouting",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5080809472,
    "size" : 278528,
    "uuid" : "87a7c154-59cd-3b41-bb42-0b450ee4c240",
    "path" : "\/Volumes\/VOLUME\/*\/AudioSession.framework\/libSessionUtility.dylib",
    "name" : "libSessionUtility.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5059330048,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.imgaudio.AudioAnalytics",
    "size" : 98304,
    "uuid" : "8ff63717-afa4-3672-9f43-475de9f7c79e",
    "path" : "\/Volumes\/VOLUME\/*\/AudioAnalytics.framework\/AudioAnalytics",
    "name" : "AudioAnalytics",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5059543040,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.OSLog",
    "size" : 65536,
    "uuid" : "d4f45807-b860-3737-8b8e-8dfb47a73191",
    "path" : "\/Volumes\/VOLUME\/*\/OSLog.framework\/OSLog",
    "name" : "OSLog",
    "CFBundleVersion" : "1861.120.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5205819392,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MediaToolbox",
    "size" : 7340032,
    "uuid" : "e31dc9b0-d282-31db-8289-a66feeb61540",
    "path" : "\/Volumes\/VOLUME\/*\/MediaToolbox.framework\/MediaToolbox",
    "name" : "MediaToolbox",
    "CFBundleVersion" : "3320.8.1.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5110349824,
    "CFBundleShortVersionString" : "8.3",
    "CFBundleIdentifier" : "com.apple.CoreUtils",
    "size" : 1409024,
    "uuid" : "a2341516-3d22-3728-b795-6211e1f459c2",
    "path" : "\/Volumes\/VOLUME\/*\/CoreUtils.framework\/CoreUtils",
    "name" : "CoreUtils",
    "CFBundleVersion" : "830.22"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5177458688,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CMPhoto",
    "size" : 1589248,
    "uuid" : "9a50b8ae-63a9-3cb3-8847-f33041373beb",
    "path" : "\/Volumes\/VOLUME\/*\/CMPhoto.framework\/CMPhoto",
    "name" : "CMPhoto",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5097357312,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.osanalytics.OSAnalytics",
    "size" : 409600,
    "uuid" : "42f202c1-f36e-3ca9-887e-42f2bf400499",
    "path" : "\/Volumes\/VOLUME\/*\/OSAnalytics.framework\/OSAnalytics",
    "name" : "OSAnalytics",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5135466496,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.cmphoto.AppleJPEGXL",
    "size" : 1867776,
    "uuid" : "774b54a7-435f-3ffa-a907-cc63441cd009",
    "path" : "\/Volumes\/VOLUME\/*\/AppleJPEGXL.framework\/AppleJPEGXL",
    "name" : "AppleJPEGXL",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4980195328,
    "CFBundleShortVersionString" : "334.0.16.3",
    "CFBundleIdentifier" : "com.apple.CoreTime",
    "size" : 32768,
    "uuid" : "e36480ca-9325-37d2-8456-f7a1c7b465db",
    "path" : "\/Volumes\/VOLUME\/*\/CoreTime.framework\/CoreTime",
    "name" : "CoreTime",
    "CFBundleVersion" : "334.0.16.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5107744768,
    "size" : 606208,
    "uuid" : "7479d2c7-4931-3b1d-a395-0d7708b94785",
    "path" : "\/Volumes\/VOLUME\/*\/libswift_RegexParser.dylib",
    "name" : "libswift_RegexParser.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4982063104,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.OSAServicesClient",
    "size" : 32768,
    "uuid" : "45f1a6fd-4e51-367a-8b78-074b0faa7505",
    "path" : "\/Volumes\/VOLUME\/*\/OSAServicesClient.framework\/OSAServicesClient",
    "name" : "OSAServicesClient",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4812816384,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.iphonesimulator.SimulatorClient",
    "size" : 16384,
    "uuid" : "5cbfd142-f009-3409-807d-895662ea5df9",
    "path" : "\/Volumes\/VOLUME\/*\/SimulatorClient.framework\/SimulatorClient",
    "name" : "SimulatorClient",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5082726400,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreUtilsExtras",
    "size" : 163840,
    "uuid" : "ad7a1515-c5d9-38c3-8957-ca2d4dfccc12",
    "path" : "\/Volumes\/VOLUME\/*\/CoreUtilsExtras.framework\/CoreUtilsExtras",
    "name" : "CoreUtilsExtras",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5137498112,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CMCapture",
    "size" : 589824,
    "uuid" : "8ed95120-2b22-3194-bd17-5596c9b48712",
    "path" : "\/Volumes\/VOLUME\/*\/CMCapture.framework\/CMCapture",
    "name" : "CMCapture"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5193678848,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ModelManagerServices",
    "size" : 1228800,
    "uuid" : "bba0715d-4b9b-3789-af08-d79c805d8dc3",
    "path" : "\/Volumes\/VOLUME\/*\/ModelManagerServices.framework\/ModelManagerServices",
    "name" : "ModelManagerServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5217976320,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TelephonyUtilities",
    "size" : 2244608,
    "uuid" : "246742f3-f51c-3372-9ac7-de8498320670",
    "path" : "\/Volumes\/VOLUME\/*\/TelephonyUtilities.framework\/TelephonyUtilities",
    "name" : "TelephonyUtilities",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5222842368,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AVFCore",
    "size" : 2342912,
    "uuid" : "00410cd2-679e-3a81-89a7-f7478d535fae",
    "path" : "\/Volumes\/VOLUME\/*\/AVFCore.framework\/AVFCore",
    "name" : "AVFCore",
    "CFBundleVersion" : "2420.7.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5196234752,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.audio.AVFAudio",
    "size" : 1409024,
    "uuid" : "27c56d14-d420-3db3-baaf-79afae684d2a",
    "path" : "\/Volumes\/VOLUME\/*\/AVFAudio.framework\/AVFAudio",
    "name" : "AVFAudio"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5228560384,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AVFCapture",
    "size" : 1605632,
    "uuid" : "e708aaae-e643-3c5c-b9b2-3fc06c80c3a7",
    "path" : "\/Volumes\/VOLUME\/*\/AVFCapture.framework\/AVFCapture",
    "name" : "AVFCapture",
    "CFBundleVersion" : "665.120.8"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5182849024,
    "CFBundleShortVersionString" : "226",
    "CFBundleIdentifier" : "com.apple.Quagga",
    "size" : 1163264,
    "uuid" : "c03631c0-9260-33bd-8fa3-33f3d5d0f929",
    "path" : "\/Volumes\/VOLUME\/*\/Quagga.framework\/Quagga",
    "name" : "Quagga",
    "CFBundleVersion" : "226"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4813750272,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Celestial",
    "size" : 16384,
    "uuid" : "fa132d72-d13c-34cf-bbb9-9b8926458f86",
    "path" : "\/Volumes\/VOLUME\/*\/Celestial.framework\/Celestial",
    "name" : "Celestial",
    "CFBundleVersion" : "3320.8.1.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5093851136,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CameraOverlayServices",
    "size" : 81920,
    "uuid" : "a9679853-7718-3b7b-bf3e-1fc25aea9b0c",
    "path" : "\/Volumes\/VOLUME\/*\/CameraOverlayServices.framework\/CameraOverlayServices",
    "name" : "CameraOverlayServices",
    "CFBundleVersion" : "4097.122.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5098209280,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CMCaptureCore",
    "size" : 81920,
    "uuid" : "cad19938-745a-3c70-9ce3-f2c1375c445b",
    "path" : "\/Volumes\/VOLUME\/*\/CMCaptureCore.framework\/CMCaptureCore",
    "name" : "CMCaptureCore",
    "CFBundleVersion" : "665.120.8"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4951506944,
    "CFBundleIdentifier" : "com.apple.CMCaptureDevice",
    "size" : 16384,
    "uuid" : "a2a818a5-60da-3876-9a7a-83f9692a1b7a",
    "path" : "\/Volumes\/VOLUME\/*\/CMCaptureDevice.framework\/CMCaptureDevice",
    "name" : "CMCaptureDevice"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5109137408,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CMImaging",
    "size" : 327680,
    "uuid" : "eff6e7e5-6de5-3d98-bbf8-0356c9116628",
    "path" : "\/Volumes\/VOLUME\/*\/CMImaging.framework\/CMImaging",
    "name" : "CMImaging"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5251907584,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.vision.EspressoFramework",
    "size" : 12255232,
    "uuid" : "eef94be0-0be4-3f9a-8b03-fefdeaebf12e",
    "path" : "\/Volumes\/VOLUME\/*\/Espresso.framework\/Espresso",
    "name" : "Espresso",
    "CFBundleVersion" : "3525.1.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5075271680,
    "CFBundleShortVersionString" : "3404.3.1",
    "CFBundleIdentifier" : "com.apple.mlcompiler.services",
    "size" : 98304,
    "uuid" : "9e9199b9-c841-3eed-aa18-dcb298cfbb00",
    "path" : "\/Volumes\/VOLUME\/*\/MLCompilerServices.framework\/MLCompilerServices",
    "name" : "MLCompilerServices",
    "CFBundleVersion" : "3404.3.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5094506496,
    "CFBundleShortVersionString" : "3404.3.1",
    "CFBundleIdentifier" : "com.apple.mlcompiler.runtime",
    "size" : 344064,
    "uuid" : "25e23738-d26f-3e72-b613-7298833a3e87",
    "path" : "\/Volumes\/VOLUME\/*\/MLCompilerRuntime.framework\/MLCompilerRuntime",
    "name" : "MLCompilerRuntime",
    "CFBundleVersion" : "3404.3.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5201854464,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.proactive.AppleIntelligenceReporting",
    "size" : 491520,
    "uuid" : "ac99185b-36c3-3945-948f-6a2c6271f546",
    "path" : "\/Volumes\/VOLUME\/*\/AppleIntelligenceReporting.framework\/AppleIntelligenceReporting",
    "name" : "AppleIntelligenceReporting",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4973969408,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.security.CryptoKit-C-Bridging",
    "size" : 16384,
    "uuid" : "0cddb6f4-abd3-3524-9a2a-07427bbd0d5e",
    "path" : "\/Volumes\/VOLUME\/*\/CryptoKitCBridging.framework\/CryptoKitCBridging",
    "name" : "CryptoKitCBridging",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5184323584,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CryptoTokenKit",
    "size" : 376832,
    "uuid" : "53a616d7-6332-335d-ae78-fb51e051739e",
    "path" : "\/Volumes\/VOLUME\/*\/CryptoTokenKit.framework\/CryptoTokenKit",
    "name" : "CryptoTokenKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5120049152,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.LocalAuthentication",
    "size" : 294912,
    "uuid" : "4b8de740-3cfb-3ac1-a59c-fb621f0972ef",
    "path" : "\/Volumes\/VOLUME\/*\/LocalAuthentication.framework\/LocalAuthentication",
    "name" : "LocalAuthentication",
    "CFBundleVersion" : "2005.120.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5237538816,
    "CFBundleIdentifier" : "com.apple.LocalAuthenticationCore",
    "size" : 1654784,
    "uuid" : "3332f9f6-762d-3b72-903a-24ad1e1cce74",
    "path" : "\/Volumes\/VOLUME\/*\/LocalAuthenticationCore.framework\/LocalAuthenticationCore",
    "name" : "LocalAuthenticationCore",
    "CFBundleVersion" : "2005.120.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5094932480,
    "CFBundleIdentifier" : "com.apple.LocalAuthenticationCredentialServices",
    "size" : 114688,
    "uuid" : "31e119f9-2fa5-3088-8e73-c18f68d93c69",
    "path" : "\/Volumes\/VOLUME\/*\/LocalAuthenticationCredentialServices.framework\/LocalAuthenticationCredentialServices",
    "name" : "LocalAuthenticationCredentialServices",
    "CFBundleVersion" : "2005.120.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5053808640,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreAuthentication.SharedUtils",
    "size" : 49152,
    "uuid" : "57d05b99-c36e-349d-8d44-3fb4b70037d2",
    "path" : "\/Volumes\/VOLUME\/*\/LocalAuthentication.framework\/Support\/SharedUtils.framework\/SharedUtils",
    "name" : "SharedUtils",
    "CFBundleVersion" : "2005.120.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5285412864,
    "CFBundleIdentifier" : "com.apple.IntelligencePlatformLibrary",
    "size" : 7225344,
    "uuid" : "3da2b342-224f-3003-ba76-82186e53c558",
    "path" : "\/Volumes\/VOLUME\/*\/IntelligencePlatformLibrary.framework\/IntelligencePlatformLibrary",
    "name" : "IntelligencePlatformLibrary",
    "CFBundleVersion" : "274.57"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5199937536,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.biome.CascadeSets",
    "size" : 573440,
    "uuid" : "c9c025f7-087a-3f6c-97ab-94e8ca827a3a",
    "path" : "\/Volumes\/VOLUME\/*\/CascadeSets.framework\/CascadeSets",
    "name" : "CascadeSets",
    "CFBundleVersion" : "209.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5120753664,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.biome.BiomeStorage",
    "size" : 262144,
    "uuid" : "059fa571-9a85-362b-a39a-58451f0489da",
    "path" : "\/Volumes\/VOLUME\/*\/BiomeStorage.framework\/BiomeStorage",
    "name" : "BiomeStorage",
    "CFBundleVersion" : "209.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5139070976,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PoirotSchematizer",
    "size" : 442368,
    "uuid" : "c0cfd670-c99c-3d73-b42a-faa489688ca8",
    "path" : "\/Volumes\/VOLUME\/*\/PoirotSchematizer.framework\/PoirotSchematizer",
    "name" : "PoirotSchematizer",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4982194176,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.biome.BiomeSync",
    "size" : 32768,
    "uuid" : "f9c8a435-0884-34ec-9647-9564942eb6b6",
    "path" : "\/Volumes\/VOLUME\/*\/BiomeSync.framework\/BiomeSync",
    "name" : "BiomeSync",
    "CFBundleVersion" : "209.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5098782720,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.biome.BiomeDSL",
    "size" : 98304,
    "uuid" : "0e8ed797-8e68-350a-94cd-cee93a076c65",
    "path" : "\/Volumes\/VOLUME\/*\/BiomeDSL.framework\/BiomeDSL",
    "name" : "BiomeDSL",
    "CFBundleVersion" : "209.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5109858304,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PoirotUDFs",
    "size" : 196608,
    "uuid" : "418b992f-31d6-33a2-b572-5a8fc34b1443",
    "path" : "\/Volumes\/VOLUME\/*\/PoirotUDFs.framework\/PoirotUDFs",
    "name" : "PoirotUDFs",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4945674240,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.InternationalTextSearch",
    "size" : 16384,
    "uuid" : "c065e26f-e0ef-3d48-a264-a26268b9c0a6",
    "path" : "\/Volumes\/VOLUME\/*\/InternationalTextSearch.framework\/InternationalTextSearch",
    "name" : "InternationalTextSearch",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5112971264,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PoirotSQLite",
    "size" : 229376,
    "uuid" : "2a7c1469-7b7e-33d5-9f76-b2d476465c3e",
    "path" : "\/Volumes\/VOLUME\/*\/PoirotSQLite.framework\/PoirotSQLite",
    "name" : "PoirotSQLite",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5113364480,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BluetoothManager",
    "size" : 98304,
    "uuid" : "8983d98b-f1c0-335a-baee-dfdbf89b5405",
    "path" : "\/Volumes\/VOLUME\/*\/BluetoothManager.framework\/BluetoothManager",
    "name" : "BluetoothManager",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5234229248,
    "CFBundleIdentifier" : "com.apple.CoreBluetooth",
    "size" : 983040,
    "uuid" : "91e05a71-14c7-3fb6-91d1-ed0e2a6da450",
    "path" : "\/Volumes\/VOLUME\/*\/CoreBluetooth.framework\/CoreBluetooth",
    "name" : "CoreBluetooth",
    "CFBundleVersion" : "195.7.1.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5242880000,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.accessibility.AXCoreUtilities",
    "size" : 933888,
    "uuid" : "18eb05f7-8588-36db-8456-c1444c68a7e4",
    "path" : "\/Volumes\/VOLUME\/*\/AXCoreUtilities.framework\/AXCoreUtilities",
    "name" : "AXCoreUtilities",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5199167488,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MobileBluetooth",
    "size" : 229376,
    "uuid" : "d279fb5a-c532-3da3-8d2c-3a13a72b93bc",
    "path" : "\/Volumes\/VOLUME\/*\/MobileBluetooth.framework\/MobileBluetooth",
    "name" : "MobileBluetooth",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5113610240,
    "size" : 131072,
    "uuid" : "5f67af5b-5dc8-3fd1-b27c-3b21e3842db3",
    "path" : "\/Volumes\/VOLUME\/*\/libedit.3.dylib",
    "name" : "libedit.3.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5205114880,
    "CFBundleShortVersionString" : "7.0.80",
    "CFBundleIdentifier" : "com.apple.AttributeGraph",
    "size" : 262144,
    "uuid" : "77e0aed2-9e45-3d5f-a342-afd81934ffac",
    "path" : "\/Volumes\/VOLUME\/*\/AttributeGraph.framework\/AttributeGraph",
    "name" : "AttributeGraph",
    "CFBundleVersion" : "7.0.80"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4979671040,
    "size" : 16384,
    "uuid" : "f4c83caa-2687-3ec3-ad40-78d723292961",
    "path" : "\/Volumes\/VOLUME\/*\/libAXSafeCategoryBundle.dylib",
    "name" : "libAXSafeCategoryBundle.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5244747776,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.DataFrame",
    "size" : 1163264,
    "uuid" : "93e0e3a0-d036-3e7a-8a98-2f18fa94850f",
    "path" : "\/Volumes\/VOLUME\/*\/TabularData.framework\/TabularData",
    "name" : "TabularData"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5232934912,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ArgumentParserInternal",
    "size" : 475136,
    "uuid" : "2e4c293c-058e-30e1-ab14-37ef21b5c068",
    "path" : "\/Volumes\/VOLUME\/*\/ArgumentParserInternal.framework\/ArgumentParserInternal",
    "name" : "ArgumentParserInternal",
    "CFBundleVersion" : "1.20.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5201166336,
    "size" : 245760,
    "uuid" : "efd8aa86-7eec-31e3-8db1-6b9ee0a6fa18",
    "path" : "\/Volumes\/VOLUME\/*\/libncurses.5.4.dylib",
    "name" : "libncurses.5.4.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5247811584,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AddressBookLegacy",
    "size" : 753664,
    "uuid" : "c7055741-b438-3cdf-a40c-1f080676e121",
    "path" : "\/Volumes\/VOLUME\/*\/AddressBookLegacy.framework\/AddressBookLegacy",
    "name" : "AddressBookLegacy",
    "CFBundleVersion" : "30"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5271633920,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CallKit",
    "size" : 638976,
    "uuid" : "2dbb0e31-be2a-3c37-be3d-408499f08bfd",
    "path" : "\/Volumes\/VOLUME\/*\/CallKit.framework\/CallKit",
    "name" : "CallKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5198708736,
    "CFBundleShortVersionString" : "13.1.47",
    "CFBundleIdentifier" : "com.apple.RTCReporting",
    "size" : 163840,
    "uuid" : "8dc4828c-5d5f-37ee-a595-ead4db7e2b5e",
    "path" : "\/Volumes\/VOLUME\/*\/RTCReporting.framework\/RTCReporting",
    "name" : "RTCReporting",
    "CFBundleVersion" : "166.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5121310720,
    "CFBundleShortVersionString" : "8.0",
    "CFBundleIdentifier" : "com.apple.commonutilities",
    "size" : 98304,
    "uuid" : "e6182c13-ff87-3601-a904-e838847b3e9e",
    "path" : "\/Volumes\/VOLUME\/*\/CommonUtilities.framework\/CommonUtilities",
    "name" : "CommonUtilities",
    "CFBundleVersion" : "900"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5056954368,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.communicationsfilter",
    "size" : 32768,
    "uuid" : "a8285347-e7c5-35ae-b2eb-b4247b32e5d3",
    "path" : "\/Volumes\/VOLUME\/*\/CommunicationsFilter.framework\/CommunicationsFilter",
    "name" : "CommunicationsFilter",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5070569472,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.imtransferservices",
    "size" : 49152,
    "uuid" : "1ec497ea-5d94-3df5-b7f1-7f40e85b6181",
    "path" : "\/Volumes\/VOLUME\/*\/IMTransferServices.framework\/IMTransferServices",
    "name" : "IMTransferServices",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5246337024,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.imfoundation",
    "size" : 425984,
    "uuid" : "d5758c04-2fe7-3657-9ca2-a5efab46f82f",
    "path" : "\/Volumes\/VOLUME\/*\/IMFoundation.framework\/IMFoundation",
    "name" : "IMFoundation",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5050171392,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.incomingcallfilter",
    "size" : 16384,
    "uuid" : "76a1d2ca-a3a5-35ff-9370-f69e682ec38e",
    "path" : "\/Volumes\/VOLUME\/*\/IncomingCallFilter.framework\/IncomingCallFilter",
    "name" : "IncomingCallFilter",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4981473280,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhoneNumbers",
    "size" : 16384,
    "uuid" : "46a6a664-0a51-3b0c-86a9-6d23896ad043",
    "path" : "\/Volumes\/VOLUME\/*\/PhoneNumbers.framework\/PhoneNumbers",
    "name" : "PhoneNumbers",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5273141248,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.calls.NeighborhoodActivityConduit",
    "size" : 458752,
    "uuid" : "f85ab66e-3750-33c3-b347-726f6e25d078",
    "path" : "\/Volumes\/VOLUME\/*\/NeighborhoodActivityConduit.framework\/NeighborhoodActivityConduit",
    "name" : "NeighborhoodActivityConduit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5278990336,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CallHistory",
    "size" : 2015232,
    "uuid" : "2bb52cb3-4bdf-394a-a729-9158c3428952",
    "path" : "\/Volumes\/VOLUME\/*\/CallHistory.framework\/CallHistory",
    "name" : "CallHistory",
    "CFBundleVersion" : "106.600.51.2.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5233672192,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.IdentityLookup",
    "size" : 196608,
    "uuid" : "e42e5c79-0a0c-35d3-af9d-7f9fa6a807bc",
    "path" : "\/Volumes\/VOLUME\/*\/IdentityLookup.framework\/IdentityLookup",
    "name" : "IdentityLookup",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5249286144,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GenerativeFunctions.GenerativeModels",
    "size" : 737280,
    "uuid" : "225421bf-cfe4-3045-a1bb-46dee6b57273",
    "path" : "\/Volumes\/VOLUME\/*\/GenerativeModels.framework\/GenerativeModels",
    "name" : "GenerativeModels",
    "CFBundleVersion" : "222.43.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5308874752,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.idsfoundation",
    "size" : 5947392,
    "uuid" : "f7d3c48f-3fff-3ff4-80a6-4212817b4e7e",
    "path" : "\/Volumes\/VOLUME\/*\/IDSFoundation.framework\/IDSFoundation",
    "name" : "IDSFoundation",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5185224704,
    "size" : 49152,
    "uuid" : "41e07a66-277c-3cac-a464-4f2916325a4e",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftIntents.dylib",
    "name" : "libswiftIntents.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5236244480,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.dataaccess.dataaccessexpress.framework",
    "size" : 262144,
    "uuid" : "e61b0974-58a4-3446-932e-938d57b63692",
    "path" : "\/Volumes\/VOLUME\/*\/DataAccessExpress.framework\/DataAccessExpress",
    "name" : "DataAccessExpress",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5282496512,
    "CFBundleShortVersionString" : "8.0",
    "CFBundleIdentifier" : "com.apple.AddressBook.ContactsFoundation",
    "size" : 786432,
    "uuid" : "806d56ef-ec09-3186-aef7-8c0b53b814fb",
    "path" : "\/Volumes\/VOLUME\/*\/ContactsFoundation.framework\/ContactsFoundation",
    "name" : "ContactsFoundation",
    "CFBundleVersion" : "1397.600.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5318443008,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TextInput",
    "size" : 1867776,
    "uuid" : "1a8e7732-8a47-3730-94ab-d819c235c17f",
    "path" : "\/Volumes\/VOLUME\/*\/TextInput.framework\/TextInput",
    "name" : "TextInput",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5075730432,
    "CFBundleShortVersionString" : "1",
    "CFBundleIdentifier" : "com.apple.contacts.ContactsMetrics",
    "size" : 16384,
    "uuid" : "dad7d578-0a92-30c7-958f-15f6fdb0c260",
    "path" : "\/Volumes\/VOLUME\/*\/ContactsMetrics.framework\/ContactsMetrics",
    "name" : "ContactsMetrics",
    "CFBundleVersion" : "21.500.21"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5236850688,
    "CFBundleShortVersionString" : "7.0",
    "CFBundleIdentifier" : "com.apple.iCalendar",
    "size" : 262144,
    "uuid" : "915a7e2c-5f40-3b5d-823a-123d3c588d38",
    "path" : "\/Volumes\/VOLUME\/*\/iCalendar.framework\/iCalendar",
    "name" : "iCalendar",
    "CFBundleVersion" : "1169.4.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5094277120,
    "CFBundleShortVersionString" : "296",
    "CFBundleIdentifier" : "com.apple.URLFormatting",
    "size" : 49152,
    "uuid" : "a597c01a-de0d-3b97-8e71-9116ee77cb45",
    "path" : "\/Volumes\/VOLUME\/*\/URLFormatting.framework\/URLFormatting",
    "name" : "URLFormatting",
    "CFBundleVersion" : "296.11"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5247156224,
    "CFBundleShortVersionString" : "8.0",
    "CFBundleIdentifier" : "com.apple.datadetectorscore",
    "size" : 294912,
    "uuid" : "2967b188-a72e-3370-8d11-986a68ad2d19",
    "path" : "\/Volumes\/VOLUME\/*\/DataDetectorsCore.framework\/DataDetectorsCore",
    "name" : "DataDetectorsCore",
    "CFBundleVersion" : "821.7"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5277040640,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CloudSubscriptionFeatures",
    "size" : 917504,
    "uuid" : "70e7cc63-dfc6-3092-8e68-6ab8713ac4b7",
    "path" : "\/Volumes\/VOLUME\/*\/CloudSubscriptionFeatures.framework\/CloudSubscriptionFeatures",
    "name" : "CloudSubscriptionFeatures",
    "CFBundleVersion" : "1.9"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5379997696,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GeoServices",
    "size" : 30326784,
    "uuid" : "c1901a61-d2f2-3b08-96f5-99b8aaf334b4",
    "path" : "\/Volumes\/VOLUME\/*\/GeoServices.framework\/GeoServices",
    "name" : "GeoServices",
    "CFBundleVersion" : "2031.35.2.9.20"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5301731328,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Montreal",
    "size" : 1736704,
    "uuid" : "fe35d018-a784-30b3-9e15-f09ae7c34f9c",
    "path" : "\/Volumes\/VOLUME\/*\/Montreal.framework\/Montreal",
    "name" : "Montreal",
    "CFBundleVersion" : "178"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5275598848,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.NaturalLanguage",
    "size" : 458752,
    "uuid" : "bebe0f0b-fd64-3f1e-ac50-85a3ccb5b668",
    "path" : "\/Volumes\/VOLUME\/*\/NaturalLanguage.framework\/NaturalLanguage",
    "name" : "NaturalLanguage",
    "CFBundleVersion" : "114"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5185404928,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.LinguisticData",
    "size" : 32768,
    "uuid" : "9b27a575-ef2f-3504-a300-869b04d3af64",
    "path" : "\/Volumes\/VOLUME\/*\/LinguisticData.framework\/LinguisticData",
    "name" : "LinguisticData",
    "CFBundleVersion" : "483.10"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5303762944,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreNLP",
    "size" : 1032192,
    "uuid" : "65ed0744-eb47-35a0-b545-f49389fc5d16",
    "path" : "\/Volumes\/VOLUME\/*\/CoreNLP.framework\/CoreNLP",
    "name" : "CoreNLP",
    "CFBundleVersion" : "313"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5250498560,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GenerativeFunctions.GenerativeModelsFoundation",
    "size" : 393216,
    "uuid" : "a25fa120-6c8b-34a4-b91c-40102412c814",
    "path" : "\/Volumes\/VOLUME\/*\/GenerativeModelsFoundation.framework\/GenerativeModelsFoundation",
    "name" : "GenerativeModelsFoundation",
    "CFBundleVersion" : "222.43.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5284659200,
    "size" : 294912,
    "uuid" : "aa7483bd-5a29-381c-bb51-98b03e7e688a",
    "path" : "\/Volumes\/VOLUME\/*\/libTelephonyUtilDynamic.dylib",
    "name" : "libTelephonyUtilDynamic.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5333565440,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TokenGeneration",
    "size" : 1851392,
    "uuid" : "1033c3fe-2792-3f4b-b036-9cacd5262c85",
    "path" : "\/Volumes\/VOLUME\/*\/TokenGeneration.framework\/TokenGeneration",
    "name" : "TokenGeneration",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5251268608,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GenerativeFunctions.GenerativeFunctions",
    "size" : 229376,
    "uuid" : "ac1be934-1197-3cb7-afcc-0fe9fe01d179",
    "path" : "\/Volumes\/VOLUME\/*\/GenerativeFunctions.framework\/GenerativeFunctions",
    "name" : "GenerativeFunctions",
    "CFBundleVersion" : "222.43.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5300535296,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GenerativeFunctions.GenerativeFunctionsFoundation",
    "size" : 491520,
    "uuid" : "2c9e8594-0012-3c94-a8ff-b2972bb4fc93",
    "path" : "\/Volumes\/VOLUME\/*\/GenerativeFunctionsFoundation.framework\/GenerativeFunctionsFoundation",
    "name" : "GenerativeFunctionsFoundation",
    "CFBundleVersion" : "222.43.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5341216768,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ModelCatalog.ModelCatalog",
    "size" : 2228224,
    "uuid" : "bccaabbd-39c6-32fe-b4e2-1c5678748d3f",
    "path" : "\/Volumes\/VOLUME\/*\/ModelCatalog.framework\/ModelCatalog",
    "name" : "ModelCatalog",
    "CFBundleVersion" : "233.38"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5326159872,
    "CFBundleIdentifier" : "com.apple.SensitiveContentAnalysisML",
    "size" : 851968,
    "uuid" : "7b38ebf0-b6fb-31ff-bf26-1edb5fff686f",
    "path" : "\/Volumes\/VOLUME\/*\/SensitiveContentAnalysisML.framework\/SensitiveContentAnalysisML",
    "name" : "SensitiveContentAnalysisML",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5299699712,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GenerativeFunctions.GenerativeFunctionsInstrumentation",
    "size" : 327680,
    "uuid" : "2e284053-e4e4-33bd-bfb9-ae1d32d2974a",
    "path" : "\/Volumes\/VOLUME\/*\/GenerativeFunctionsInstrumentation.framework\/GenerativeFunctionsInstrumentation",
    "name" : "GenerativeFunctionsInstrumentation",
    "CFBundleVersion" : "222.43.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5327912960,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GenerativeFunctions.PromptKit",
    "size" : 1425408,
    "uuid" : "9fa83a66-9e11-3f47-9b09-e8bc7bb91627",
    "path" : "\/Volumes\/VOLUME\/*\/PromptKit.framework\/PromptKit",
    "name" : "PromptKit",
    "CFBundleVersion" : "222.43.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5201543168,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.intelligenceflow.ProactiveDaemonSupport",
    "size" : 147456,
    "uuid" : "887cf73b-52fc-317d-a46c-a5ce33c17bc4",
    "path" : "\/Volumes\/VOLUME\/*\/ProactiveDaemonSupport.framework\/ProactiveDaemonSupport",
    "name" : "ProactiveDaemonSupport",
    "CFBundleVersion" : "3525.11.14"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5276581888,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreEmoji",
    "size" : 212992,
    "uuid" : "3ee44161-e9bf-3d3c-86d1-b354e90af318",
    "path" : "\/Volumes\/VOLUME\/*\/CoreEmoji.framework\/CoreEmoji",
    "name" : "CoreEmoji",
    "CFBundleVersion" : "261.4.6"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5307072512,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Lexicon-framework",
    "size" : 1064960,
    "uuid" : "2850fd5a-2f76-32bf-a4f1-9c23d27f3692",
    "path" : "\/Volumes\/VOLUME\/*\/Lexicon.framework\/Lexicon",
    "name" : "Lexicon",
    "CFBundleVersion" : "195.12"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5349441536,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TokenGenerationCore",
    "size" : 1638400,
    "uuid" : "f676b3f7-3008-3c53-b1d2-50f99c5b071f",
    "path" : "\/Volumes\/VOLUME\/*\/TokenGenerationCore.framework\/TokenGenerationCore",
    "name" : "TokenGenerationCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5199790080,
    "size" : 32768,
    "uuid" : "84abc171-311d-3d8b-bdc5-9c6a95d71e13",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftNaturalLanguage.dylib",
    "name" : "libswiftNaturalLanguage.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5232410624,
    "size" : 49152,
    "uuid" : "6958fffa-fd0f-3c7c-b4f2-0b20b1a38fb4",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftRegexBuilder.dylib",
    "name" : "libswiftRegexBuilder.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5331943424,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.trial",
    "size" : 638976,
    "uuid" : "ad8566e0-3a96-32fa-ad8f-e353c1241860",
    "path" : "\/Volumes\/VOLUME\/*\/Trial.framework\/Trial",
    "name" : "Trial",
    "CFBundleVersion" : "474.2.18.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5330567168,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TrialProto",
    "size" : 491520,
    "uuid" : "8c2f337b-4634-3e84-ae43-f8120fbdea7e",
    "path" : "\/Volumes\/VOLUME\/*\/TrialProto.framework\/TrialProto",
    "name" : "TrialProto",
    "CFBundleVersion" : "474.2.18.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5345148928,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.aiml.dendrite.Dendrite",
    "size" : 409600,
    "uuid" : "e8f5eeb9-7d66-3b7a-88d0-cc2f1c714587",
    "path" : "\/Volumes\/VOLUME\/*\/Dendrite.framework\/Dendrite",
    "name" : "Dendrite",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5251645440,
    "CFBundleIdentifier" : "com.apple.siri.flatbuffer.AppleFlatBuffers",
    "size" : 114688,
    "uuid" : "e8ee7b94-ca88-31bf-b1fd-7f0edda1b234",
    "path" : "\/Volumes\/VOLUME\/*\/AppleFlatBuffers.framework\/AppleFlatBuffers",
    "name" : "AppleFlatBuffers",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5306368000,
    "CFBundleIdentifier" : "com.apple.SentencePieceInternal",
    "size" : 344064,
    "uuid" : "98ef2c45-daf8-3950-9228-465602f77dfc",
    "path" : "\/Volumes\/VOLUME\/*\/SentencePieceInternal.framework\/SentencePieceInternal",
    "name" : "SentencePieceInternal",
    "CFBundleVersion" : "57.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5365645312,
    "CFBundleShortVersionString" : "9.5.4",
    "CFBundleIdentifier" : "com.apple.VN",
    "size" : 6209536,
    "uuid" : "aac3fc1e-04c4-3825-af80-dba9983f185f",
    "path" : "\/Volumes\/VOLUME\/*\/Vision.framework\/Vision",
    "name" : "Vision",
    "CFBundleVersion" : "9.5.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5353816064,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.LanguageModeling",
    "size" : 1654784,
    "uuid" : "a946b122-bd59-3bce-957f-3239b1349115",
    "path" : "\/Volumes\/VOLUME\/*\/LanguageModeling.framework\/LanguageModeling",
    "name" : "LanguageModeling",
    "CFBundleVersion" : "433.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5345837056,
    "size" : 360448,
    "uuid" : "42c1bfd2-656c-3ae7-89ac-2035d6dcc1d9",
    "path" : "\/Volumes\/VOLUME\/*\/libmecab.dylib",
    "name" : "libmecab.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5305729024,
    "size" : 196608,
    "uuid" : "fe8035c1-8537-39ae-a899-1e34ecba2dcb",
    "path" : "\/Volumes\/VOLUME\/*\/libCRFSuite.dylib",
    "name" : "libCRFSuite.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5056315392,
    "size" : 16384,
    "uuid" : "cc32edb3-1241-334a-891a-804c29657134",
    "path" : "\/Volumes\/VOLUME\/*\/libgermantok.dylib",
    "name" : "libgermantok.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5199642624,
    "size" : 32768,
    "uuid" : "2c7d68db-4002-327e-b843-4fea9794735e",
    "path" : "\/Volumes\/VOLUME\/*\/libThaiTokenizer.dylib",
    "name" : "libThaiTokenizer.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5433851904,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreML",
    "size" : 5324800,
    "uuid" : "37c003e7-8611-3046-b0fb-f7151c1a0773",
    "path" : "\/Volumes\/VOLUME\/*\/CoreML.framework\/CoreML",
    "name" : "CoreML",
    "CFBundleVersion" : "3520.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5347540992,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreML.MLAssetIO",
    "size" : 491520,
    "uuid" : "beec3632-d8f8-34b1-8477-4ac458e64a1d",
    "path" : "\/Volumes\/VOLUME\/*\/MLAssetIO.framework\/MLAssetIO",
    "name" : "MLAssetIO",
    "CFBundleVersion" : "3520.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5487280128,
    "CFBundleShortVersionString" : "6.5.1",
    "CFBundleIdentifier" : "com.apple.MetalPerformanceShadersGraph",
    "size" : 18939904,
    "uuid" : "bbf82850-92c5-3d63-aa4d-73da1a27b855",
    "path" : "\/Volumes\/VOLUME\/*\/MetalPerformanceShadersGraph.framework\/MetalPerformanceShadersGraph",
    "name" : "MetalPerformanceShadersGraph",
    "CFBundleVersion" : "6.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5358731264,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.mlpt.ODIE",
    "size" : 2424832,
    "uuid" : "a6e310c6-97fb-3b7b-8c31-dee56e766737",
    "path" : "\/Volumes\/VOLUME\/*\/ODIE.framework\/ODIE",
    "name" : "ODIE",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5355880448,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MetalPerformanceShaders.MPSCore",
    "size" : 704512,
    "uuid" : "46ba087b-e078-3744-ae66-03560f6973fe",
    "path" : "\/Volumes\/VOLUME\/*\/MetalPerformanceShaders.framework\/Frameworks\/MPSCore.framework\/MPSCore",
    "name" : "MPSCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5363564544,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MetalPerformanceShaders.MPSImage",
    "size" : 606208,
    "uuid" : "6ae0c534-f970-34a3-a6ca-fb412ab9d142",
    "path" : "\/Volumes\/VOLUME\/*\/MetalPerformanceShaders.framework\/Frameworks\/MPSImage.framework\/MPSImage",
    "name" : "MPSImage",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5446811648,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MetalPerformanceShaders.MPSNeuralNetwork",
    "size" : 2342912,
    "uuid" : "283900f7-99ae-3dfd-a540-5537bb82d41d",
    "path" : "\/Volumes\/VOLUME\/*\/MetalPerformanceShaders.framework\/Frameworks\/MPSNeuralNetwork.framework\/MPSNeuralNetwork",
    "name" : "MPSNeuralNetwork",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5308416000,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MetalPerformanceShaders.MPSMatrix",
    "size" : 180224,
    "uuid" : "27ff3da2-d520-3470-a818-8b936b121882",
    "path" : "\/Volumes\/VOLUME\/*\/MetalPerformanceShaders.framework\/Frameworks\/MPSMatrix.framework\/MPSMatrix",
    "name" : "MPSMatrix",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5346902016,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MetalPerformanceShaders.MPSRayIntersector",
    "size" : 327680,
    "uuid" : "83305200-06d8-391c-805c-17008293764d",
    "path" : "\/Volumes\/VOLUME\/*\/MetalPerformanceShaders.framework\/Frameworks\/MPSRayIntersector.framework\/MPSRayIntersector",
    "name" : "MPSRayIntersector",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5450334208,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MetalPerformanceShaders.MPSNDArray",
    "size" : 1884160,
    "uuid" : "5ea0bbee-6a36-3982-af5c-893bbf4c26f8",
    "path" : "\/Volumes\/VOLUME\/*\/MetalPerformanceShaders.framework\/Frameworks\/MPSNDArray.framework\/MPSNDArray",
    "name" : "MPSNDArray",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5232214016,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MPSFunctions",
    "size" : 81920,
    "uuid" : "ccb19391-0f1d-3ba2-a3da-b41925ee6b43",
    "path" : "\/Volumes\/VOLUME\/*\/MetalPerformanceShaders.framework\/Frameworks\/MPSFunctions.framework\/MPSFunctions",
    "name" : "MPSFunctions",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5278531584,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MPSBenchmarkLoop",
    "size" : 114688,
    "uuid" : "38c0580c-5450-3ea2-8309-d9d5319b0d22",
    "path" : "\/Volumes\/VOLUME\/*\/MetalPerformanceShaders.framework\/Frameworks\/MPSBenchmarkLoop.framework\/MPSBenchmarkLoop",
    "name" : "MPSBenchmarkLoop",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5205639168,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MPSHost",
    "size" : 32768,
    "uuid" : "74563c33-e018-322e-a82d-1a0954fb069f",
    "path" : "\/Volumes\/VOLUME\/*\/MetalPerformanceShaders.framework\/Frameworks\/MPSHost.framework\/MPSHost",
    "name" : "MPSHost",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5453365248,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.gpusw.MetalTools",
    "size" : 1343488,
    "uuid" : "4391cffb-82d4-3fe4-a386-e372116c02ed",
    "path" : "\/Volumes\/VOLUME\/*\/MetalTools.framework\/MetalTools",
    "name" : "MetalTools",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5278760960,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ggml.ModelAsset",
    "size" : 98304,
    "uuid" : "97d6ffc5-e030-3bf4-a3cd-b55d71d1bdd3",
    "path" : "\/Volumes\/VOLUME\/*\/MLModelAsset.framework\/MLModelAsset",
    "name" : "MLModelAsset",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5232771072,
    "size" : 81920,
    "uuid" : "cfa4ace6-856b-35df-b3bc-e6b0223e116a",
    "path" : "\/Volumes\/VOLUME\/*\/libcmph.dylib",
    "name" : "libcmph.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5361598464,
    "CFBundleShortVersionString" : "1.74.0",
    "CFBundleIdentifier" : "com.apple.CoreSceneUnderstanding",
    "size" : 999424,
    "uuid" : "986b4d34-03f5-3506-a63c-2a489279fe62",
    "path" : "\/Volumes\/VOLUME\/*\/CoreSceneUnderstanding.framework\/CoreSceneUnderstanding",
    "name" : "CoreSceneUnderstanding",
    "CFBundleVersion" : "1.74.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5356912640,
    "CFBundleShortVersionString" : "9.5.4",
    "CFBundleIdentifier" : "com.apple.VisionCore",
    "size" : 245760,
    "uuid" : "c51e0180-7e64-321c-ae97-280a5805e09e",
    "path" : "\/Volumes\/VOLUME\/*\/VisionCore.framework\/VisionCore",
    "name" : "VisionCore",
    "CFBundleVersion" : "9.5.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5465882624,
    "size" : 6356992,
    "uuid" : "d203d005-4c8e-34e9-ad73-1e54cbefc5ad",
    "path" : "\/Volumes\/VOLUME\/*\/Vision.framework\/libfaceCore.dylib",
    "name" : "libfaceCore.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5301485568,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Futhark",
    "size" : 98304,
    "uuid" : "48772939-aa43-33fc-8082-916ca7bc0f1c",
    "path" : "\/Volumes\/VOLUME\/*\/Futhark.framework\/Futhark",
    "name" : "Futhark",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5357518848,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.acg.InertiaCam",
    "size" : 475136,
    "uuid" : "ee3db25c-f4ee-37f7-8022-0ece493203bb",
    "path" : "\/Volumes\/VOLUME\/*\/InertiaCam.framework\/InertiaCam",
    "name" : "InertiaCam",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5461245952,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TextRecognition",
    "size" : 2359296,
    "uuid" : "8d531aa8-24df-337c-8e09-c6453cbe6810",
    "path" : "\/Volumes\/VOLUME\/*\/TextRecognition.framework\/TextRecognition",
    "name" : "TextRecognition",
    "CFBundleVersion" : "157"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5300256768,
    "CFBundleShortVersionString" : "8.0",
    "CFBundleIdentifier" : "com.apple.DataDetection",
    "size" : 49152,
    "uuid" : "db0b435c-be4d-3d31-8bcf-cccd792a2264",
    "path" : "\/Volumes\/VOLUME\/*\/DataDetection.framework\/DataDetection",
    "name" : "DataDetection",
    "CFBundleVersion" : "821.7"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5443289088,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CVNLP",
    "size" : 966656,
    "uuid" : "3f7c8c8e-05ae-3c42-b3bd-74504431c42c",
    "path" : "\/Volumes\/VOLUME\/*\/CVNLP.framework\/CVNLP",
    "name" : "CVNLP",
    "CFBundleVersion" : "119"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5232607232,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GeoServices",
    "size" : 32768,
    "uuid" : "6ec25614-313c-338c-aad1-aec830781487",
    "path" : "\/Volumes\/VOLUME\/*\/GeoServicesCore.framework\/GeoServicesCore",
    "name" : "GeoServicesCore",
    "CFBundleVersion" : "2031.35.2.9.20"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5306220544,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PushKit",
    "size" : 49152,
    "uuid" : "199f70da-6159-37db-b9c4-d2f5eddb6277",
    "path" : "\/Volumes\/VOLUME\/*\/PushKit.framework\/PushKit",
    "name" : "PushKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5346410496,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Engram",
    "size" : 98304,
    "uuid" : "418455b3-ef6d-3f95-8979-fb528fdb38f9",
    "path" : "\/Volumes\/VOLUME\/*\/Engram.framework\/Engram",
    "name" : "Engram",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5378850816,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.AsyncAlgorithmsInternal",
    "size" : 524288,
    "uuid" : "498324d9-956a-363c-9954-bc6fad60d092",
    "path" : "\/Volumes\/VOLUME\/*\/AsyncAlgorithmsInternal.framework\/AsyncAlgorithmsInternal",
    "name" : "AsyncAlgorithmsInternal"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4743069696,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.marco",
    "size" : 16384,
    "uuid" : "aee53122-ab9d-3359-8b26-3c7d68108074",
    "path" : "\/Volumes\/VOLUME\/*\/Marco.framework\/Marco",
    "name" : "Marco",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5456740352,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.internal.XPCDistributed",
    "size" : 409600,
    "uuid" : "391e2051-fbdb-3b4c-b6b1-0bfeb5992063",
    "path" : "\/Volumes\/VOLUME\/*\/XPCDistributed.framework\/XPCDistributed",
    "name" : "XPCDistributed",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5059723264,
    "CFBundleShortVersionString" : "8.0",
    "CFBundleIdentifier" : "com.apple.ftawd",
    "size" : 16384,
    "uuid" : "a2b69e49-6093-3966-94ea-fefef1d12a5d",
    "path" : "\/Volumes\/VOLUME\/*\/FTAWD.framework\/FTAWD",
    "name" : "FTAWD",
    "CFBundleVersion" : "900"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5333319680,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppleIDAuthSupport",
    "size" : 65536,
    "uuid" : "d9238093-5c89-30e8-8b0f-5dc96e05a359",
    "path" : "\/Volumes\/VOLUME\/*\/AppleIDAuthSupport.framework\/AppleIDAuthSupport",
    "name" : "AppleIDAuthSupport",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5531271168,
    "CFBundleShortVersionString" : "2360.120.2",
    "CFBundleIdentifier" : "com.apple.cloudkit.CloudKit",
    "size" : 3801088,
    "uuid" : "74c2b678-2477-3b45-bb6a-4a8db3903d54",
    "path" : "\/Volumes\/VOLUME\/*\/CloudKit.framework\/CloudKit",
    "name" : "CloudKit",
    "CFBundleVersion" : "2360.120.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5071339520,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreDuetDaemonProtocol",
    "size" : 16384,
    "uuid" : "0840920c-795f-3c1e-9f96-104214177171",
    "path" : "\/Volumes\/VOLUME\/*\/CoreDuetDaemonProtocol.framework\/CoreDuetDaemonProtocol",
    "name" : "CoreDuetDaemonProtocol",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5445353472,
    "CFBundleShortVersionString" : "1.3",
    "CFBundleIdentifier" : "com.apple.cloudkit.C2",
    "size" : 360448,
    "uuid" : "811d4d42-e988-3f1e-9ef7-033ed03b23aa",
    "path" : "\/Volumes\/VOLUME\/*\/C2.framework\/C2",
    "name" : "C2",
    "CFBundleVersion" : "2300.120"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5458214912,
    "CFBundleIdentifier" : "com.apple.cloudkit.CloudCoreInternal",
    "size" : 393216,
    "uuid" : "cadcd3ae-f2a8-3c05-9940-7fb3f1be0a43",
    "path" : "\/Volumes\/VOLUME\/*\/CloudCoreInternal.framework\/CloudCoreInternal",
    "name" : "CloudCoreInternal",
    "CFBundleVersion" : "2360.120.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5475041280,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ProtectedCloudStorage",
    "size" : 573440,
    "uuid" : "6db11e7c-7e4e-3e53-bbf4-37e6ed5871cf",
    "path" : "\/Volumes\/VOLUME\/*\/ProtectedCloudStorage.framework\/ProtectedCloudStorage",
    "name" : "ProtectedCloudStorage",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5378064384,
    "CFBundleIdentifier" : "com.apple.cloudkit.CloudAsset",
    "size" : 360448,
    "uuid" : "36b4977d-c2fa-33c0-ae9f-08adb8c6f343",
    "path" : "\/Volumes\/VOLUME\/*\/CloudAsset.framework\/CloudAsset",
    "name" : "CloudAsset",
    "CFBundleVersion" : "2360.120.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5444534272,
    "CFBundleShortVersionString" : "1.0.1",
    "CFBundleIdentifier" : "com.apple.CoreTransferable",
    "size" : 245760,
    "uuid" : "a285e09d-ef16-3385-a9ac-a84aba57d756",
    "path" : "\/Volumes\/VOLUME\/*\/CoreTransferable.framework\/CoreTransferable",
    "name" : "CoreTransferable",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5349048320,
    "CFBundleShortVersionString" : "3075.0.8",
    "CFBundleIdentifier" : "com.apple.locationsupport",
    "size" : 212992,
    "uuid" : "f5e1d9e0-3184-36f7-ae61-98b8d7693968",
    "path" : "\/Volumes\/VOLUME\/*\/LocationSupport.framework\/LocationSupport",
    "name" : "LocationSupport",
    "CFBundleVersion" : "3075.0.8"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5234098176,
    "CFBundleIdentifier" : "com.apple.CoreLocation.LocationLogEncryption",
    "size" : 32768,
    "uuid" : "e137f637-d9b4-3cdf-acfc-b014381150e2",
    "path" : "\/Volumes\/VOLUME\/*\/LocationLogEncryption.framework\/LocationLogEncryption",
    "name" : "LocationLogEncryption",
    "CFBundleVersion" : "3075.0.8"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5300420608,
    "size" : 32768,
    "uuid" : "6d9fd7ed-207b-3ecb-ac7a-5d79e9a4e8d9",
    "path" : "\/Volumes\/VOLUME\/*\/libheimdal-asn1.dylib",
    "name" : "libheimdal-asn1.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5362941952,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.security.octagontrust",
    "size" : 196608,
    "uuid" : "d1ca7480-ca98-3999-b851-dcf5d11441ec",
    "path" : "\/Volumes\/VOLUME\/*\/OctagonTrust.framework\/OctagonTrust",
    "name" : "OctagonTrust",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5459099648,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.security.KeychainCircle.KeychainCircle",
    "size" : 262144,
    "uuid" : "1dae75a7-3b17-3039-9224-9a7bb9e020ca",
    "path" : "\/Volumes\/VOLUME\/*\/KeychainCircle.framework\/KeychainCircle",
    "name" : "KeychainCircle",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5479219200,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.UIFoundation",
    "size" : 1441792,
    "uuid" : "3ce0749b-0647-34a0-991b-52feca254f62",
    "path" : "\/Volumes\/VOLUME\/*\/UIFoundation.framework\/UIFoundation",
    "name" : "UIFoundation",
    "CFBundleVersion" : "1019"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5348671488,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.IntentsFoundation",
    "size" : 65536,
    "uuid" : "2c0dda38-2bb0-3b32-9931-48fce60eb6f8",
    "path" : "\/Volumes\/VOLUME\/*\/IntentsFoundation.framework\/IntentsFoundation",
    "name" : "IntentsFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5476270080,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppProtection",
    "size" : 770048,
    "uuid" : "de592ae7-e5b9-362f-953a-18375c17bf93",
    "path" : "\/Volumes\/VOLUME\/*\/AppProtection.framework\/AppProtection",
    "name" : "AppProtection",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5483954176,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreSuggestions",
    "size" : 802816,
    "uuid" : "2150a988-acf1-33ed-86c2-342cf4e7c0b1",
    "path" : "\/Volumes\/VOLUME\/*\/CoreSuggestions.framework\/CoreSuggestions",
    "name" : "CoreSuggestions",
    "CFBundleVersion" : "1311.7"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5540724736,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreSpotlight",
    "size" : 1310720,
    "uuid" : "bb07aad8-408c-3cac-9633-8b4db90a43c8",
    "path" : "\/Volumes\/VOLUME\/*\/CoreSpotlight.framework\/CoreSpotlight",
    "name" : "CoreSpotlight",
    "CFBundleVersion" : "2418.5.9.101"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5446172672,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.proactive.support.ProactiveEventTracker",
    "size" : 229376,
    "uuid" : "6251c07f-fe72-37e9-b45c-019b43a5be19",
    "path" : "\/Volumes\/VOLUME\/*\/ProactiveEventTracker.framework\/ProactiveEventTracker",
    "name" : "ProactiveEventTracker",
    "CFBundleVersion" : "418.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5477580800,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.spotlight.metadata.utilities",
    "size" : 425984,
    "uuid" : "80bd53cf-6f5a-3bf7-97f6-7ef2eb7e9934",
    "path" : "\/Volumes\/VOLUME\/*\/MetadataUtilities.framework\/MetadataUtilities",
    "name" : "MetadataUtilities",
    "CFBundleVersion" : "2418.5.9.101"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5346607104,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.spotlight.CSExattrCrypto",
    "size" : 65536,
    "uuid" : "07d8f612-a736-3e81-9689-86a299521f6e",
    "path" : "\/Volumes\/VOLUME\/*\/CSExattrCrypto.framework\/CSExattrCrypto",
    "name" : "CSExattrCrypto",
    "CFBundleVersion" : "2418.5.9.101"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5379637248,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CellularPlanManager",
    "size" : 114688,
    "uuid" : "ca127a46-f1cf-3bad-b1ac-946fd6eae6f0",
    "path" : "\/Volumes\/VOLUME\/*\/CellularPlanManager.framework\/CellularPlanManager",
    "name" : "CellularPlanManager",
    "CFBundleVersion" : "13187.6"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5482168320,
    "CFBundleShortVersionString" : "1.2",
    "CFBundleIdentifier" : "com.apple.ClassKit",
    "size" : 753664,
    "uuid" : "5490bb36-bbd6-39d7-be6c-d9415381d57c",
    "path" : "\/Volumes\/VOLUME\/*\/ClassKit.framework\/ClassKit",
    "name" : "ClassKit",
    "CFBundleVersion" : "151.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5460328448,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.contacts.vCard",
    "size" : 245760,
    "uuid" : "535ceda8-0cc5-3a1a-a769-e1bc78c648d1",
    "path" : "\/Volumes\/VOLUME\/*\/vCard.framework\/vCard",
    "name" : "vCard",
    "CFBundleVersion" : "3804.600.21"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5306073088,
    "CFBundleShortVersionString" : "1.2",
    "CFBundleIdentifier" : "com.apple.ManagedOrganizationContacts",
    "size" : 32768,
    "uuid" : "18886b94-b752-3920-ad98-ae4698288471",
    "path" : "\/Volumes\/VOLUME\/*\/ManagedOrganizationContacts.framework\/ManagedOrganizationContacts",
    "name" : "ManagedOrganizationContacts",
    "CFBundleVersion" : "151.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5543657472,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CloudDocs",
    "size" : 786432,
    "uuid" : "4d3c974e-445c-37d9-8d7c-a16ad728ab71",
    "path" : "\/Volumes\/VOLUME\/*\/CloudDocs.framework\/CloudDocs",
    "name" : "CloudDocs",
    "CFBundleVersion" : "4479.122.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5358452736,
    "size" : 98304,
    "uuid" : "19cdf706-ec87-3bac-9bca-a5b0fa5dbfe9",
    "path" : "\/Volumes\/VOLUME\/*\/libprequelite.dylib",
    "name" : "libprequelite.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5478432768,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.LiveCommunicationKit",
    "size" : 294912,
    "uuid" : "3156f7db-02ec-3005-8bdb-9f5bd86fc5e5",
    "path" : "\/Volumes\/VOLUME\/*\/LiveCommunicationKit.framework\/LiveCommunicationKit",
    "name" : "LiveCommunicationKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5331763200,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CallsUtilities",
    "size" : 32768,
    "uuid" : "7dd808e4-ebfe-39f4-9ecd-1f0aaff7cdda",
    "path" : "\/Volumes\/VOLUME\/*\/CallsUtilities.framework\/CallsUtilities",
    "name" : "CallsUtilities",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5459673088,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CallsXPC",
    "size" : 114688,
    "uuid" : "bc1ad98c-ea79-37d4-8d1e-d34931112d70",
    "path" : "\/Volumes\/VOLUME\/*\/CallsXPC.framework\/CallsXPC",
    "name" : "CallsXPC",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5346787328,
    "size" : 16384,
    "uuid" : "d192166b-609c-3e67-bcbd-75f475ce5187",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftCallKit.dylib",
    "name" : "libswiftCallKit.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5485740032,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RemoteTextInput",
    "size" : 229376,
    "uuid" : "8c93c450-cbbe-3dea-888e-dddec9f3f445",
    "path" : "\/Volumes\/VOLUME\/*\/RemoteTextInput.framework\/RemoteTextInput",
    "name" : "RemoteTextInput",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5538988032,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MediaServices",
    "size" : 524288,
    "uuid" : "a5e7a6ce-f9de-34ee-bce9-b4f61c5c40d5",
    "path" : "\/Volumes\/VOLUME\/*\/MediaServices.framework\/MediaServices",
    "name" : "MediaServices",
    "CFBundleVersion" : "4025.600.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5483397120,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.persistentconnection",
    "size" : 180224,
    "uuid" : "09042307-b950-3a01-b66e-26ee0597eae1",
    "path" : "\/Volumes\/VOLUME\/*\/PersistentConnection.framework\/PersistentConnection",
    "name" : "PersistentConnection",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5546704896,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SonicFoundation",
    "size" : 770048,
    "uuid" : "b53560ed-c0dc-3f0e-88b3-5ab8f58807bc",
    "path" : "\/Volumes\/VOLUME\/*\/SonicFoundation.framework\/SonicFoundation",
    "name" : "SonicFoundation",
    "CFBundleVersion" : "25610.26.16.301"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5537824768,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Osprey",
    "size" : 294912,
    "uuid" : "c7ecf17a-b70f-3ae1-bbce-d26ddb72ad03",
    "path" : "\/Volumes\/VOLUME\/*\/Osprey.framework\/Osprey",
    "name" : "Osprey",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5562302464,
    "CFBundleShortVersionString" : "1",
    "CFBundleIdentifier" : "com.apple.siri.tts.SiriTTS",
    "size" : 9715712,
    "uuid" : "68c721a9-dd60-3001-ba38-05bc312cd4fa",
    "path" : "\/Volumes\/VOLUME\/*\/SiriTTS.framework\/SiriTTS",
    "name" : "SiriTTS",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5358206976,
    "CFBundleShortVersionString" : "1",
    "CFBundleIdentifier" : "com.apple.siri.SiriPowerInstrumentation",
    "size" : 49152,
    "uuid" : "499d00af-b28b-3654-810f-657a77ae5932",
    "path" : "\/Volumes\/VOLUME\/*\/SiriPowerInstrumentation.framework\/SiriPowerInstrumentation",
    "name" : "SiriPowerInstrumentation",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5486297088,
    "size" : 81920,
    "uuid" : "e80d78af-910f-3882-a3a6-c88008efa018",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftCoreAudio_Private.dylib",
    "name" : "libswiftCoreAudio_Private.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5548146688,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.crossdevicearbitration.feedback",
    "size" : 393216,
    "uuid" : "45a025d6-af3c-30fa-8e74-7ab072cf8763",
    "path" : "\/Volumes\/VOLUME\/*\/SiriCrossDeviceArbitrationFeedback.framework\/SiriCrossDeviceArbitrationFeedback",
    "name" : "SiriCrossDeviceArbitrationFeedback",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5486592000,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.setupandmigration.SetupAssistantSupport",
    "size" : 114688,
    "uuid" : "ef7556c4-7077-354c-aa5a-daf2c4126e8f",
    "path" : "\/Volumes\/VOLUME\/*\/SetupAssistantSupport.framework\/SetupAssistantSupport",
    "name" : "SetupAssistantSupport",
    "CFBundleVersion" : "550.4.6"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5540151296,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.icloud.FindMyDevice",
    "size" : 180224,
    "uuid" : "27c0e605-4ee3-3dd6-a6ca-778ac0a8342d",
    "path" : "\/Volumes\/VOLUME\/*\/FindMyDevice.framework\/FindMyDevice",
    "name" : "FindMyDevice",
    "CFBundleVersion" : "71"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5538381824,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.IntlPreferences",
    "size" : 163840,
    "uuid" : "ad0b8e08-04ee-360d-96c3-5428f4689ab0",
    "path" : "\/Volumes\/VOLUME\/*\/IntlPreferences.framework\/IntlPreferences",
    "name" : "IntlPreferences",
    "CFBundleVersion" : "475.4.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5486919680,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.icloud.FMCoreLite",
    "size" : 131072,
    "uuid" : "1b41e524-45a6-32b0-8d78-03589dabc730",
    "path" : "\/Volumes\/VOLUME\/*\/FMCoreLite.framework\/FMCoreLite",
    "name" : "FMCoreLite",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5460115456,
    "size" : 114688,
    "uuid" : "47a3e429-ee15-36c3-b15e-179fafe4f237",
    "path" : "\/Volumes\/VOLUME\/*\/libresolv.9.dylib",
    "name" : "libresolv.9.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5347393536,
    "CFBundleShortVersionString" : "4.0",
    "CFBundleIdentifier" : "com.apple.CommonAuth",
    "size" : 32768,
    "uuid" : "b2ac1156-4718-353f-ab9a-fbbe7270a498",
    "path" : "\/Volumes\/VOLUME\/*\/CommonAuth.framework\/CommonAuth",
    "name" : "CommonAuth",
    "CFBundleVersion" : "2.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5548982272,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.security.CryptoKit-Private",
    "size" : 720896,
    "uuid" : "a8d9cdc5-2d2a-3797-a598-70ebdeb126b4",
    "path" : "\/Volumes\/VOLUME\/*\/CryptoKitPrivate.framework\/CryptoKitPrivate",
    "name" : "CryptoKitPrivate",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5545803776,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.awd",
    "size" : 245760,
    "uuid" : "9815983f-2217-340a-a8ec-6c0ceaf09019",
    "path" : "\/Volumes\/VOLUME\/*\/WirelessDiagnostics.framework\/WirelessDiagnostics",
    "name" : "WirelessDiagnostics",
    "CFBundleVersion" : "998"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5552881664,
    "size" : 1310720,
    "uuid" : "a4c7033e-c01e-3443-be15-7984eb823003",
    "path" : "\/Volumes\/VOLUME\/*\/libAWDSupportFramework.dylib",
    "name" : "libAWDSupportFramework.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5546295296,
    "size" : 212992,
    "uuid" : "422dd41b-04c6-3e2d-84be-fbf9afd49d37",
    "path" : "\/Volumes\/VOLUME\/*\/libAWDSupport.dylib",
    "name" : "libAWDSupport.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5545312256,
    "size" : 81920,
    "uuid" : "57cb1d39-ab9f-3169-92ef-a8d8dcc347b8",
    "path" : "\/Volumes\/VOLUME\/*\/libprotobuf-lite.dylib",
    "name" : "libprotobuf-lite.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5550931968,
    "size" : 376832,
    "uuid" : "fcc04cc2-33d7-3a5c-8d9a-469ddde67d59",
    "path" : "\/Volumes\/VOLUME\/*\/libprotobuf.dylib",
    "name" : "libprotobuf.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5094424576,
    "CFBundleShortVersionString" : "13.0",
    "CFBundleIdentifier" : "com.apple.CaptiveNetworkSupport",
    "size" : 16384,
    "uuid" : "021b6a7f-4d2e-3b21-bfa6-1097fdabf8a0",
    "path" : "\/Volumes\/VOLUME\/*\/CaptiveNetwork.framework\/CaptiveNetwork",
    "name" : "CaptiveNetwork",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5460983808,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SystemWake",
    "size" : 81920,
    "uuid" : "06605bd1-a5a2-3318-9e93-37759d9f2a8c",
    "path" : "\/Volumes\/VOLUME\/*\/SystemWake.framework\/SystemWake",
    "name" : "SystemWake",
    "CFBundleVersion" : "732.1.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5583962112,
    "CFBundleShortVersionString" : "2094.60.51",
    "CFBundleIdentifier" : "com.apple.Sharing",
    "size" : 3833856,
    "uuid" : "aa7f0101-7e68-331d-8c42-e1b1f5e19c04",
    "path" : "\/Volumes\/VOLUME\/*\/Sharing.framework\/Sharing",
    "name" : "Sharing",
    "CFBundleVersion" : "2094.60.51"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5099061248,
    "size" : 16384,
    "uuid" : "b194b02d-3f45-3a31-8c84-db35239294eb",
    "path" : "\/Volumes\/VOLUME\/*\/libutil.dylib",
    "name" : "libutil.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5551767552,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PrototypeTools",
    "size" : 163840,
    "uuid" : "7c78cd81-4f91-3369-8b13-450d5a525734",
    "path" : "\/Volumes\/VOLUME\/*\/PrototypeTools.framework\/PrototypeTools",
    "name" : "PrototypeTools",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5556649984,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Pegasus",
    "size" : 425984,
    "uuid" : "3f98a2a1-1fd8-3336-bc2a-346786daf940",
    "path" : "\/Volumes\/VOLUME\/*\/Pegasus.framework\/Pegasus",
    "name" : "Pegasus",
    "CFBundleVersion" : "303"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5558796288,
    "CFBundleShortVersionString" : "26.5",
    "CFBundleIdentifier" : "com.apple.TipKit",
    "size" : 540672,
    "uuid" : "adf6b19a-4c5f-3374-89c4-51e2514e11fc",
    "path" : "\/Volumes\/VOLUME\/*\/TipKit.framework\/TipKit",
    "name" : "TipKit",
    "CFBundleVersion" : "120.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5363367936,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.audio.AudioDataAnalysisFramework",
    "size" : 49152,
    "uuid" : "cb302002-6502-3b2a-8d5b-ba91840339e7",
    "path" : "\/Volumes\/VOLUME\/*\/AudioDataAnalysis.framework\/AudioDataAnalysis",
    "name" : "AudioDataAnalysis",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5576458240,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SystemStatus",
    "size" : 475136,
    "uuid" : "afa744cf-fb87-3d6f-92d5-52387f6aa6fd",
    "path" : "\/Volumes\/VOLUME\/*\/SystemStatus.framework\/SystemStatus",
    "name" : "SystemStatus",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5577719808,
    "CFBundleShortVersionString" : "1000.4.11",
    "CFBundleIdentifier" : "com.apple.FrontBoard",
    "size" : 753664,
    "uuid" : "4bedb879-f316-3ed2-83d3-35ea8cd084c1",
    "path" : "\/Volumes\/VOLUME\/*\/FrontBoard.framework\/FrontBoard",
    "name" : "FrontBoard",
    "CFBundleVersion" : "1000.4.11"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5557649408,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.DocumentManager",
    "size" : 360448,
    "uuid" : "c1d9e1f0-613d-32ee-8c00-818c9c23bb97",
    "path" : "\/Volumes\/VOLUME\/*\/DocumentManager.framework\/DocumentManager",
    "name" : "DocumentManager",
    "CFBundleVersion" : "367.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5668143104,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.UIKitCore",
    "size" : 36634624,
    "uuid" : "12463677-be34-38f7-9e11-3421bbf362fc",
    "path" : "\/Volumes\/VOLUME\/*\/UIKitCore.framework\/UIKitCore",
    "name" : "UIKitCore",
    "CFBundleVersion" : "9126.5.5.2.103"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5591695360,
    "CFBundleShortVersionString" : "2094.60.51",
    "CFBundleIdentifier" : "com.apple.ShareSheet",
    "size" : 1327104,
    "uuid" : "c3a6cb18-8b49-3622-88ee-acb40edcc974",
    "path" : "\/Volumes\/VOLUME\/*\/ShareSheet.framework\/ShareSheet",
    "name" : "ShareSheet",
    "CFBundleVersion" : "2094.60.51"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5579390976,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PrintKitUI",
    "size" : 622592,
    "uuid" : "a8eecbc3-bae4-3511-a8b6-7153ea6fd350",
    "path" : "\/Volumes\/VOLUME\/*\/PrintKitUI.framework\/PrintKitUI",
    "name" : "PrintKitUI",
    "CFBundleVersion" : "78.9"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5559959552,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.DocumentManagerCore",
    "size" : 425984,
    "uuid" : "0a249889-620a-3e29-b7df-a3aeaaf710ab",
    "path" : "\/Volumes\/VOLUME\/*\/DocumentManagerCore.framework\/DocumentManagerCore",
    "name" : "DocumentManagerCore",
    "CFBundleVersion" : "367.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5550473216,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CollectionViewCore",
    "size" : 147456,
    "uuid" : "0fca47a0-e139-3066-a10d-a1fd41d627d3",
    "path" : "\/Volumes\/VOLUME\/*\/CollectionViewCore.framework\/CollectionViewCore",
    "name" : "CollectionViewCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5348868096,
    "CFBundleIdentifier" : "com.apple.UIUtilities",
    "size" : 16384,
    "uuid" : "c735b1e5-d185-3935-973f-52c029ec58cc",
    "path" : "\/Volumes\/VOLUME\/*\/UIUtilities.framework\/UIUtilities",
    "name" : "UIUtilities",
    "CFBundleVersion" : "9126.5.5.2.103"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5365530624,
    "CFBundleShortVersionString" : "26.5",
    "CFBundleIdentifier" : "com.apple.dt.XCTTargetBootstrap",
    "size" : 32768,
    "uuid" : "8c4334df-62f1-3050-997e-702ae97958e1",
    "path" : "\/Volumes\/VOLUME\/*\/XCTTargetBootstrap.framework\/XCTTargetBootstrap",
    "name" : "XCTTargetBootstrap",
    "CFBundleVersion" : "24901"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5598625792,
    "CFBundleShortVersionString" : "8624",
    "CFBundleIdentifier" : "com.apple.WebKitLegacy",
    "size" : 1851392,
    "uuid" : "9d812216-bd06-37f6-a580-615ea96eeca9",
    "path" : "\/Volumes\/VOLUME\/*\/WebKitLegacy.framework\/WebKitLegacy",
    "name" : "WebKitLegacy",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5445238784,
    "size" : 32768,
    "uuid" : "6678c1b5-e230-3e1a-9d1d-6eff36c8290c",
    "path" : "\/Volumes\/VOLUME\/*\/libapp_launch_measurement.dylib",
    "name" : "libapp_launch_measurement.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5550112768,
    "CFBundleShortVersionString" : "1.4",
    "CFBundleIdentifier" : "com.apple.performance.DiagnosticRequest",
    "size" : 98304,
    "uuid" : "034e3861-2731-3f37-a6fe-fa0b905dce34",
    "path" : "\/Volumes\/VOLUME\/*\/DiagnosticRequest.framework\/DiagnosticRequest",
    "name" : "DiagnosticRequest",
    "CFBundleVersion" : "4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5594759168,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.UIIntelligenceSupport",
    "size" : 1097728,
    "uuid" : "2a3b377d-612a-3e6b-82f1-fd4302eca7aa",
    "path" : "\/Volumes\/VOLUME\/*\/UIIntelligenceSupport.framework\/UIIntelligenceSupport",
    "name" : "UIIntelligenceSupport",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5602492416,
    "CFBundleShortVersionString" : "7.5.2",
    "CFBundleIdentifier" : "com.apple.DesignLibrary",
    "size" : 1343488,
    "uuid" : "f0585fa0-8c83-33bb-b112-35fff73f378b",
    "path" : "\/Volumes\/VOLUME\/*\/DesignLibrary.framework\/DesignLibrary",
    "name" : "DesignLibrary",
    "CFBundleVersion" : "7.5.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5580750848,
    "CFBundleShortVersionString" : "9126.1.5",
    "CFBundleIdentifier" : "com.apple.Gestures",
    "size" : 704512,
    "uuid" : "baae6d5c-3e48-3f4d-bda3-356eaeabcfe7",
    "path" : "\/Volumes\/VOLUME\/*\/Gestures.framework\/Gestures",
    "name" : "Gestures",
    "CFBundleVersion" : "9126.1.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5552193536,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PointerUIServices",
    "size" : 81920,
    "uuid" : "59094d32-5346-39f8-87a6-abd4adfbf46e",
    "path" : "\/Volumes\/VOLUME\/*\/PointerUIServices.framework\/PointerUIServices",
    "name" : "PointerUIServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5560893440,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BacklightServices",
    "size" : 262144,
    "uuid" : "d70906f2-78dc-363c-bf48-f8c2f24266b9",
    "path" : "\/Volumes\/VOLUME\/*\/BacklightServices.framework\/BacklightServices",
    "name" : "BacklightServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5555650560,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreMaterial",
    "size" : 147456,
    "uuid" : "75474214-954f-31df-8d2a-ceb842b74c6d",
    "path" : "\/Volumes\/VOLUME\/*\/CoreMaterial.framework\/CoreMaterial",
    "name" : "CoreMaterial",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5561581568,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Pasteboard",
    "size" : 229376,
    "uuid" : "a197218d-fd18-30dc-9bd8-03e0174d3da2",
    "path" : "\/Volumes\/VOLUME\/*\/Pasteboard.framework\/Pasteboard",
    "name" : "Pasteboard",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5446696960,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.WritingTools",
    "size" : 32768,
    "uuid" : "bd8fa489-c411-3d61-a440-2c643c55457d",
    "path" : "\/Volumes\/VOLUME\/*\/WritingTools.framework\/WritingTools",
    "name" : "WritingTools",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5556027392,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Accessibility",
    "size" : 131072,
    "uuid" : "036937fa-1455-38d4-bc90-8ac9beda5eec",
    "path" : "\/Volumes\/VOLUME\/*\/Accessibility.framework\/Accessibility",
    "name" : "Accessibility",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5110267904,
    "CFBundleShortVersionString" : "1",
    "CFBundleIdentifier" : "com.apple.UpdateCycle",
    "size" : 16384,
    "uuid" : "bf336d09-edc7-3103-af09-7ba213f51c1f",
    "path" : "\/Volumes\/VOLUME\/*\/UpdateCycle.framework\/UpdateCycle",
    "name" : "UpdateCycle",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5552422912,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Symbols",
    "size" : 81920,
    "uuid" : "33212bf5-7720-3e89-b6e3-514cc4df4455",
    "path" : "\/Volumes\/VOLUME\/*\/Symbols.framework\/Symbols",
    "name" : "Symbols",
    "CFBundleVersion" : "190.4.0.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5744902144,
    "CFBundleShortVersionString" : "7.5.3",
    "CFBundleIdentifier" : "com.apple.SwiftUICore",
    "size" : 13680640,
    "uuid" : "b956b64a-af8d-3b4b-8027-702bb1f65374",
    "path" : "\/Volumes\/VOLUME\/*\/SwiftUICore.framework\/SwiftUICore",
    "name" : "SwiftUICore",
    "CFBundleVersion" : "7.5.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5582372864,
    "CFBundleIdentifier" : "com.apple.PhysicsKit",
    "size" : 278528,
    "uuid" : "32502fa6-923a-3aee-8079-55f787c27302",
    "path" : "\/Volumes\/VOLUME\/*\/PhysicsKit.framework\/PhysicsKit",
    "name" : "PhysicsKit",
    "CFBundleVersion" : "42.4.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5785763840,
    "CFBundleShortVersionString" : "8624",
    "CFBundleIdentifier" : "com.apple.JavaScriptCore",
    "size" : 27967488,
    "uuid" : "20c06bb8-b3a6-3c6d-9da8-44f6ee53c396",
    "path" : "\/Volumes\/VOLUME\/*\/JavaScriptCore.framework\/JavaScriptCore",
    "name" : "JavaScriptCore",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5912608768,
    "CFBundleShortVersionString" : "8624",
    "CFBundleIdentifier" : "com.apple.WebCore",
    "size" : 58949632,
    "uuid" : "8d58434a-b799-3cdd-81b1-7941f178f589",
    "path" : "\/Volumes\/VOLUME\/*\/WebCore.framework\/WebCore",
    "name" : "WebCore",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5581815808,
    "size" : 180224,
    "uuid" : "afb19f5c-ce7b-3916-b09c-042539e492bc",
    "path" : "\/Volumes\/VOLUME\/*\/libxslt.1.dylib",
    "name" : "libxslt.1.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5609914368,
    "size" : 3145728,
    "uuid" : "b936867b-8e72-3af3-9d85-5536eb2c9139",
    "path" : "\/Volumes\/VOLUME\/*\/WebCore.framework\/Frameworks\/libANGLE-shared.dylib",
    "name" : "libANGLE-shared.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5615009792,
    "CFBundleShortVersionString" : "8624",
    "CFBundleIdentifier" : "com.apple.WebGPU",
    "size" : 2490368,
    "uuid" : "e32077b3-4190-3f04-b737-a4e4a3286768",
    "path" : "\/Volumes\/VOLUME\/*\/WebGPU.framework\/WebGPU",
    "name" : "WebGPU",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5633540096,
    "size" : 11878400,
    "uuid" : "11cdb82e-7f63-3c1e-906f-ec7fb0b65f06",
    "path" : "\/Volumes\/VOLUME\/*\/WebCore.framework\/Frameworks\/libwebrtc.dylib",
    "name" : "libwebrtc.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4407050240,
    "size" : 16384,
    "uuid" : "935b9148-ad72-3049-91a7-ab7da0131c0a",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftCoreGraphics.dylib",
    "name" : "libswiftCoreGraphics.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5583355904,
    "size" : 131072,
    "uuid" : "a1722f66-0d8b-398f-8932-a4ede8d0ac10",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftSwiftOnoneSupport.dylib",
    "name" : "libswiftSwiftOnoneSupport.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4565663744,
    "size" : 16384,
    "uuid" : "b3c48bce-32fc-3b20-8aec-72c0758bd93c",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftsys_time.dylib",
    "name" : "libswiftsys_time.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5597577216,
    "CFBundleShortVersionString" : "551",
    "CFBundleIdentifier" : "com.apple.UserActivity",
    "size" : 409600,
    "uuid" : "c5de29b6-3e2c-34de-aa3c-32346c8ff586",
    "path" : "\/Volumes\/VOLUME\/*\/UserActivity.framework\/UserActivity",
    "name" : "UserActivity",
    "CFBundleVersion" : "551"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5605736448,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.AXRuntime",
    "size" : 425984,
    "uuid" : "f6d7318c-6b74-3be8-acf6-44534db4b388",
    "path" : "\/Volumes\/VOLUME\/*\/AXRuntime.framework\/AXRuntime",
    "name" : "AXRuntime",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4577591296,
    "size" : 16384,
    "uuid" : "c399bec3-29f9-3d68-8009-1d4b82406ec4",
    "path" : "\/Volumes\/VOLUME\/*\/libSpatial.dylib",
    "name" : "libSpatial.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5607768064,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.framework.PrintKit",
    "size" : 442368,
    "uuid" : "15cdcaab-1a97-3060-bcb2-c666e4c9683d",
    "path" : "\/Volumes\/VOLUME\/*\/PrintKit.framework\/PrintKit",
    "name" : "PrintKit",
    "CFBundleVersion" : "319.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5620776960,
    "CFBundleShortVersionString" : "7.2.1",
    "CFBundleIdentifier" : "com.apple.TextAnimationSupport",
    "size" : 999424,
    "uuid" : "5489f3e3-f540-30b0-a30d-f57c63dad366",
    "path" : "\/Volumes\/VOLUME\/*\/TextAnimationSupport.framework\/TextAnimationSupport",
    "name" : "TextAnimationSupport",
    "CFBundleVersion" : "7.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5596758016,
    "CFBundleShortVersionString" : "50",
    "CFBundleIdentifier" : "com.apple.RecapPerformanceTesting",
    "size" : 114688,
    "uuid" : "daf67347-a196-3adb-a7fb-3ccd2df002f1",
    "path" : "\/Volumes\/VOLUME\/*\/RecapPerformanceTesting.framework\/RecapPerformanceTesting",
    "name" : "RecapPerformanceTesting",
    "CFBundleVersion" : "50.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5623365632,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ClockKit",
    "size" : 622592,
    "uuid" : "57f84ee3-2646-39f3-a5e7-19cbea94d604",
    "path" : "\/Volumes\/VOLUME\/*\/ClockKit.framework\/ClockKit",
    "name" : "ClockKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5625036800,
    "CFBundleShortVersionString" : "1.174.8",
    "CFBundleIdentifier" : "com.apple.signpost.SignpostSupport",
    "size" : 540672,
    "uuid" : "60bfcc74-6ee5-3aaf-be32-87443b84fb06",
    "path" : "\/Volumes\/VOLUME\/*\/SignpostSupport.framework\/SignpostSupport",
    "name" : "SignpostSupport",
    "CFBundleVersion" : "174.8"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5538775040,
    "CFBundleShortVersionString" : "1.174.8",
    "CFBundleIdentifier" : "com.apple.performance.SignpostCollection",
    "size" : 49152,
    "uuid" : "ee4adca4-28d3-3726-95dd-7d3291d25905",
    "path" : "\/Volumes\/VOLUME\/*\/SignpostCollection.framework\/SignpostCollection",
    "name" : "SignpostCollection",
    "CFBundleVersion" : "174.8"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5626396672,
    "CFBundleShortVersionString" : "26.5",
    "CFBundleIdentifier" : "com.apple.TipKitCore",
    "size" : 770048,
    "uuid" : "dc6707b9-74b8-36da-9a4f-e17e86342467",
    "path" : "\/Volumes\/VOLUME\/*\/TipKitCore.framework\/TipKitCore",
    "name" : "TipKitCore",
    "CFBundleVersion" : "120.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4583899136,
    "size" : 16384,
    "uuid" : "f2c1a870-a090-3d75-ad2d-8f82c4a6250b",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftPhotos.dylib",
    "name" : "libswiftPhotos.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5627822080,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PDFKit",
    "size" : 1097728,
    "uuid" : "d9441044-eafd-3ceb-b43a-7d11628dcd2a",
    "path" : "\/Volumes\/VOLUME\/*\/PDFKit.framework\/PDFKit",
    "name" : "PDFKit",
    "CFBundleVersion" : "1451.5.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5653659648,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CloudPhotoLibrary",
    "size" : 2195456,
    "uuid" : "5aef33b2-626a-344e-8fdc-06a4f8f0b2f7",
    "path" : "\/Volumes\/VOLUME\/*\/CloudPhotoLibrary.framework\/CloudPhotoLibrary",
    "name" : "CloudPhotoLibrary",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5545541632,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CloudPhotoServices",
    "size" : 65536,
    "uuid" : "9f6e412c-78c8-3603-adb1-0cfffb9a02b3",
    "path" : "\/Volumes\/VOLUME\/*\/CloudPhotoServices.framework\/CloudPhotoServices",
    "name" : "CloudPhotoServices",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5630099456,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreMediaStream",
    "size" : 1081344,
    "uuid" : "051b20a9-bef7-3308-b3aa-8312aeb0f420",
    "path" : "\/Volumes\/VOLUME\/*\/CoreMediaStream.framework\/CoreMediaStream",
    "name" : "CoreMediaStream",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5597085696,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CPAnalytics",
    "size" : 131072,
    "uuid" : "90a9b4b7-dfa4-3ae3-a9e6-4ceb94d442af",
    "path" : "\/Volumes\/VOLUME\/*\/CPAnalytics.framework\/CPAnalytics",
    "name" : "CPAnalytics",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5606653952,
    "CFBundleShortVersionString" : "2020.2.2",
    "CFBundleIdentifier" : "com.apple.ImageCaptureCore",
    "size" : 229376,
    "uuid" : "ea4042ce-322d-3291-bfc3-7a4509a13e15",
    "path" : "\/Volumes\/VOLUME\/*\/ImageCaptureCore.framework\/ImageCaptureCore",
    "name" : "ImageCaptureCore",
    "CFBundleVersion" : "2020.2.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5607178240,
    "CFBundleShortVersionString" : "11.0",
    "CFBundleIdentifier" : "com.apple.photo.MediaConversionService",
    "size" : 212992,
    "uuid" : "f75e0756-6618-3764-9cdb-bb78b945e445",
    "path" : "\/Volumes\/VOLUME\/*\/MediaConversionService.framework\/MediaConversionService",
    "name" : "MediaConversionService",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5558484992,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotoFoundation",
    "size" : 81920,
    "uuid" : "1ca048e4-40cc-37f0-9e32-0a9fb8b1eb33",
    "path" : "\/Volumes\/VOLUME\/*\/PhotoFoundation.framework\/PhotoFoundation",
    "name" : "PhotoFoundation",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5844631552,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotoLibraryServices",
    "size" : 9617408,
    "uuid" : "6c752178-99f4-33c4-8431-7f7c4cb838e6",
    "path" : "\/Volumes\/VOLUME\/*\/PhotoLibraryServices.framework\/PhotoLibraryServices",
    "name" : "PhotoLibraryServices",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5649186816,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotoLibraryServicesCore",
    "size" : 1146880,
    "uuid" : "22a6b308-d15f-3880-af90-1f0c0d474b1c",
    "path" : "\/Volumes\/VOLUME\/*\/PhotoLibraryServicesCore.framework\/PhotoLibraryServicesCore",
    "name" : "PhotoLibraryServicesCore",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5660835840,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotosFormats",
    "size" : 1228800,
    "uuid" : "ccf81616-648d-3608-b7d0-172c43644b2b",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosFormats.framework\/PhotosFormats",
    "name" : "PhotosFormats",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5619433472,
    "CFBundleShortVersionString" : "1.3",
    "CFBundleIdentifier" : "com.apple.cloudkit.MMCS",
    "size" : 688128,
    "uuid" : "b6994df5-87f1-34c0-bd8f-8a80ba719f67",
    "path" : "\/Volumes\/VOLUME\/*\/MMCS.framework\/MMCS",
    "name" : "MMCS",
    "CFBundleVersion" : "2300.120"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5608882176,
    "CFBundleShortVersionString" : "2300.104",
    "CFBundleIdentifier" : "com.apple.ChunkingLibrary",
    "size" : 344064,
    "uuid" : "c0837fcd-1306-3c95-b48f-4d9d2c6e3a92",
    "path" : "\/Volumes\/VOLUME\/*\/ChunkingLibrary.framework\/ChunkingLibrary",
    "name" : "ChunkingLibrary",
    "CFBundleVersion" : "2300.104"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5604818944,
    "CFBundleShortVersionString" : "140.120.2",
    "CFBundleIdentifier" : "com.apple.AssetCacheServices",
    "size" : 131072,
    "uuid" : "65d85114-c29f-3330-96eb-ec87604bee8a",
    "path" : "\/Volumes\/VOLUME\/*\/AssetCacheServices.framework\/AssetCacheServices",
    "name" : "AssetCacheServices",
    "CFBundleVersion" : "140.120.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5618237440,
    "size" : 376832,
    "uuid" : "4c674b42-e6bb-3457-b7b9-28ab9a1b8635",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftDemangle.dylib",
    "name" : "libswiftDemangle.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5618778112,
    "CFBundleShortVersionString" : "2020.2.2",
    "CFBundleIdentifier" : "com.apple.ImageCaptureDevices",
    "size" : 180224,
    "uuid" : "9ef62c18-c374-3fa3-8813-9567d0759e2b",
    "path" : "\/Volumes\/VOLUME\/*\/ImageCaptureDevices.framework\/ImageCaptureDevices",
    "name" : "ImageCaptureDevices",
    "CFBundleVersion" : "2020.2.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5605113856,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.mediastream",
    "size" : 131072,
    "uuid" : "7cf17cc9-3c39-34f9-9dc8-25920038a2ed",
    "path" : "\/Volumes\/VOLUME\/*\/MediaStream.framework\/MediaStream",
    "name" : "MediaStream",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5658148864,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.NLP",
    "size" : 983040,
    "uuid" : "1bee8996-699c-346b-b2ab-b707e4d6ee68",
    "path" : "\/Volumes\/VOLUME\/*\/NLP.framework\/NLP",
    "name" : "NLP",
    "CFBundleVersion" : "233"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5632638976,
    "CFBundleShortVersionString" : "11.0",
    "CFBundleIdentifier" : "com.apple.PhotosImagingFoundation",
    "size" : 212992,
    "uuid" : "9ab1a566-45a5-3555-9a22-4c36ca3ebc7c",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosImagingFoundation.framework\/PhotosImagingFoundation",
    "name" : "PhotosImagingFoundation",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5652267008,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotosIntelligenceCore",
    "size" : 327680,
    "uuid" : "88dac23d-1365-388b-8a95-e61d77454f72",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosIntelligenceCore.framework\/PhotosIntelligenceCore",
    "name" : "PhotosIntelligenceCore",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5663522816,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ToneLibrary",
    "size" : 475136,
    "uuid" : "74f6c3f2-7e40-3440-b2cd-14a887f4f562",
    "path" : "\/Volumes\/VOLUME\/*\/ToneLibrary.framework\/ToneLibrary",
    "name" : "ToneLibrary",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5886377984,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.private.EmbeddedAcousticRecognition",
    "size" : 12599296,
    "uuid" : "8b75ca0a-c7d1-3ed6-84a1-0aa61de1f3ea",
    "path" : "\/Volumes\/VOLUME\/*\/EmbeddedAcousticRecognition.framework\/EmbeddedAcousticRecognition",
    "name" : "EmbeddedAcousticRecognition",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5665980416,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.EmojiFoundation",
    "size" : 507904,
    "uuid" : "de4e3307-9008-33de-85c7-b99c1ce07244",
    "path" : "\/Volumes\/VOLUME\/*\/EmojiFoundation.framework\/EmojiFoundation",
    "name" : "EmojiFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5664505856,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.vectordb.VectorSearch",
    "size" : 573440,
    "uuid" : "5200e62f-4351-34a5-8f4e-3f51758f2d0a",
    "path" : "\/Volumes\/VOLUME\/*\/VectorSearch.framework\/VectorSearch",
    "name" : "VectorSearch",
    "CFBundleVersion" : "48.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5831049216,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SDAPI",
    "size" : 3489792,
    "uuid" : "e0e68f07-34ef-37f8-aae9-368d5ab4e8bb",
    "path" : "\/Volumes\/VOLUME\/*\/SDAPI.framework\/SDAPI",
    "name" : "SDAPI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5828231168,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GRDB.GRDBInternal",
    "size" : 1392640,
    "uuid" : "28ba3767-3837-396d-9e49-e39ca94c4b63",
    "path" : "\/Volumes\/VOLUME\/*\/GRDBInternal.framework\/GRDBInternal",
    "name" : "GRDBInternal",
    "CFBundleVersion" : "15.0.0.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5378752512,
    "CFBundleShortVersionString" : "5.0",
    "CFBundleIdentifier" : "com.apple.CorePDF",
    "size" : 16384,
    "uuid" : "b0655c45-e857-3957-9e45-5fcd4ca29ae1",
    "path" : "\/Volumes\/VOLUME\/*\/CorePDF.framework\/CorePDF",
    "name" : "CorePDF",
    "CFBundleVersion" : "555"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5465767936,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RevealCore",
    "size" : 32768,
    "uuid" : "c3cf03bb-24a7-3b2c-9098-094446a64730",
    "path" : "\/Volumes\/VOLUME\/*\/RevealCore.framework\/RevealCore",
    "name" : "RevealCore",
    "CFBundleVersion" : "56"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5652955136,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CorePrediction",
    "size" : 327680,
    "uuid" : "e9dfe4e4-687b-315c-9d8e-6e0fc9e2d398",
    "path" : "\/Volumes\/VOLUME\/*\/CorePrediction.framework\/CorePrediction",
    "name" : "CorePrediction",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5836177408,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.InstallCoordination",
    "size" : 638976,
    "uuid" : "74f240f1-44f0-33ee-8d8d-09b18f0c1986",
    "path" : "\/Volumes\/VOLUME\/*\/InstallCoordination.framework\/InstallCoordination",
    "name" : "InstallCoordination",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5837422592,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppStoreDaemon",
    "size" : 753664,
    "uuid" : "6bb2282f-7052-3ffa-a08a-b05365bedbf9",
    "path" : "\/Volumes\/VOLUME\/*\/AppStoreDaemon.framework\/AppStoreDaemon",
    "name" : "AppStoreDaemon",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5632114688,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BrowserEngineKit",
    "size" : 180224,
    "uuid" : "44a60d53-8aca-377a-a4c8-d2181991cdce",
    "path" : "\/Volumes\/VOLUME\/*\/BrowserEngineKit.framework\/BrowserEngineKit",
    "name" : "BrowserEngineKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5552652288,
    "CFBundleIdentifier" : "com.apple.GameController.UI",
    "size" : 49152,
    "uuid" : "e0863649-ad37-3dcf-bd79-f7c39ca2591e",
    "path" : "\/Volumes\/VOLUME\/*\/GameControllerUI.framework\/GameControllerUI",
    "name" : "GameControllerUI",
    "CFBundleVersion" : "13.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5863063552,
    "CFBundleIdentifier" : "com.apple.GameController",
    "size" : 1425408,
    "uuid" : "ebb879a9-ad39-3a6f-9bee-600bf1da0d60",
    "path" : "\/Volumes\/VOLUME\/*\/GameController.framework\/GameController",
    "name" : "GameController",
    "CFBundleVersion" : "13.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5633163264,
    "CFBundleShortVersionString" : "1001",
    "CFBundleIdentifier" : "com.apple.SharedWebCredentials",
    "size" : 147456,
    "uuid" : "e089f325-280a-35ef-aafb-3b5be17ed5bb",
    "path" : "\/Volumes\/VOLUME\/*\/SharedWebCredentials.framework\/SharedWebCredentials",
    "name" : "SharedWebCredentials",
    "CFBundleVersion" : "1036.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5199052800,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreOptimization",
    "size" : 32768,
    "uuid" : "330fc720-2640-3f56-b140-215a774a6d89",
    "path" : "\/Volumes\/VOLUME\/*\/CoreOptimization.framework\/CoreOptimization",
    "name" : "CoreOptimization",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5999460352,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppleMediaServices",
    "size" : 5849088,
    "uuid" : "a75b54f3-44b6-334d-bac2-e1ea0e4dcfff",
    "path" : "\/Volumes\/VOLUME\/*\/AppleMediaServices.framework\/AppleMediaServices",
    "name" : "AppleMediaServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5659820032,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreFollowUp",
    "size" : 196608,
    "uuid" : "3175a1d8-262d-39c4-b216-59b7d70cdffc",
    "path" : "\/Volumes\/VOLUME\/*\/CoreFollowUp.framework\/CoreFollowUp",
    "name" : "CoreFollowUp",
    "CFBundleVersion" : "281.5.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5866536960,
    "CFBundleShortVersionString" : "1.5.5",
    "CFBundleIdentifier" : "com.apple.AppleMediaServicesKitInternal",
    "size" : 3538944,
    "uuid" : "6c43ee0e-c775-3c45-9e01-187686449200",
    "path" : "\/Volumes\/VOLUME\/*\/AppleMediaServicesKitInternal.framework\/AppleMediaServicesKitInternal",
    "name" : "AppleMediaServicesKitInternal",
    "CFBundleVersion" : "1.5.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5839273984,
    "CFBundleShortVersionString" : "8.504",
    "CFBundleIdentifier" : "com.apple.coreidv.CoreIDV",
    "size" : 917504,
    "uuid" : "1731a57e-22a7-311a-a641-9e6959047162",
    "path" : "\/Volumes\/VOLUME\/*\/CoreIDV.framework\/CoreIDV",
    "name" : "CoreIDV",
    "CFBundleVersion" : "8.504"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5874974720,
    "CFBundleShortVersionString" : "8.504",
    "CFBundleIdentifier" : "com.apple.coreidv.CoreIDVShared",
    "size" : 2588672,
    "uuid" : "f767c251-6e37-315d-974a-b6eca7fe18d5",
    "path" : "\/Volumes\/VOLUME\/*\/CoreIDVShared.framework\/CoreIDVShared",
    "name" : "CoreIDVShared",
    "CFBundleVersion" : "8.504"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5651595264,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CBORLibrary",
    "size" : 212992,
    "uuid" : "4f5df7e7-3f82-3297-9776-8660694f2193",
    "path" : "\/Volumes\/VOLUME\/*\/CBORLibrary.framework\/CBORLibrary",
    "name" : "CBORLibrary",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5660278784,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.security.SwiftASN1Internal",
    "size" : 180224,
    "uuid" : "eb09c436-def1-345e-8c4b-b3bff0515a8d",
    "path" : "\/Volumes\/VOLUME\/*\/SwiftASN1Internal.framework\/SwiftASN1Internal",
    "name" : "SwiftASN1Internal",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5483823104,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BrowserEngineCore",
    "size" : 32768,
    "uuid" : "d56c244f-d879-3376-9477-2d1216f7fff7",
    "path" : "\/Volumes\/VOLUME\/*\/BrowserEngineCore.framework\/BrowserEngineCore",
    "name" : "BrowserEngineCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5582110720,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BackgroundTasks",
    "size" : 65536,
    "uuid" : "2ad61e75-0852-3b6f-9a49-be782934b4ba",
    "path" : "\/Volumes\/VOLUME\/*\/BackgroundTasks.framework\/BackgroundTasks",
    "name" : "BackgroundTasks",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5841223680,
    "CFBundleIdentifier" : "com.apple.GameControllerFoundation",
    "size" : 606208,
    "uuid" : "2fed817d-35a1-3708-a84a-fe8bb7413657",
    "path" : "\/Volumes\/VOLUME\/*\/GameControllerFoundation.framework\/GameControllerFoundation",
    "name" : "GameControllerFoundation",
    "CFBundleVersion" : "13.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5667454976,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ReplayKit",
    "size" : 262144,
    "uuid" : "1d4a3d70-777a-307b-9c67-d8ee468c8dc6",
    "path" : "\/Volumes\/VOLUME\/*\/ReplayKit.framework\/ReplayKit",
    "name" : "ReplayKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5665325056,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.ExternalAccessory",
    "size" : 114688,
    "uuid" : "2c278b45-1088-32f0-a5b0-426a87f850b0",
    "path" : "\/Volumes\/VOLUME\/*\/ExternalAccessory.framework\/ExternalAccessory",
    "name" : "ExternalAccessory",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5556387840,
    "CFBundleIdentifier" : "com.apple.GameControllerIO",
    "size" : 49152,
    "uuid" : "0100e0c1-202d-328a-af3d-f2ebd8ecc062",
    "path" : "\/Volumes\/VOLUME\/*\/GameControllerIO.framework\/GameControllerIO",
    "name" : "GameControllerIO",
    "CFBundleVersion" : "13.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5598396416,
    "CFBundleIdentifier" : "com.apple.GameControllerSettings",
    "size" : 81920,
    "uuid" : "37f723e1-14b7-3427-9b71-fe5db1f2d149",
    "path" : "\/Volumes\/VOLUME\/*\/GameControllerSettings.framework\/GameControllerSettings",
    "name" : "GameControllerSettings",
    "CFBundleVersion" : "13.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5827051520,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreHaptics",
    "size" : 475136,
    "uuid" : "87639339-03fd-3833-844a-66fed368a436",
    "path" : "\/Volumes\/VOLUME\/*\/CoreHaptics.framework\/CoreHaptics",
    "name" : "CoreHaptics",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5665652736,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.IAP",
    "size" : 114688,
    "uuid" : "419f3d15-43b4-32bb-8148-e1a01ffb6a50",
    "path" : "\/Volumes\/VOLUME\/*\/IAP.framework\/IAP",
    "name" : "IAP",
    "CFBundleVersion" : "1.0.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5605474304,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.HID",
    "size" : 81920,
    "uuid" : "04d84e2b-7506-3a96-b337-f22f07e9509a",
    "path" : "\/Volumes\/VOLUME\/*\/HID.framework\/HID",
    "name" : "HID",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5870714880,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TimeSync",
    "size" : 507904,
    "uuid" : "b3cbf587-4c5b-3c65-81b8-126faa26689b",
    "path" : "\/Volumes\/VOLUME\/*\/TimeSync.framework\/TimeSync",
    "name" : "TimeSync",
    "CFBundleVersion" : "1450.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5562122240,
    "CFBundleShortVersionString" : "300.1",
    "CFBundleIdentifier" : "com.apple.audio.IOKitten",
    "size" : 49152,
    "uuid" : "bf29e481-7e61-3996-8283-f7932398592b",
    "path" : "\/Volumes\/VOLUME\/*\/IOKitten.framework\/IOKitten",
    "name" : "IOKitten",
    "CFBundleVersion" : "300.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6025478144,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.AVConference",
    "size" : 8355840,
    "uuid" : "d71c6d53-9f28-30c9-a2b6-479df3991c4b",
    "path" : "\/Volumes\/VOLUME\/*\/AVConference.framework\/AVConference",
    "name" : "AVConference",
    "CFBundleVersion" : "2205.3.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5871878144,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SensitiveContentAnalysis",
    "size" : 917504,
    "uuid" : "f03e9481-7eeb-37da-ae16-0fcfd455d28a",
    "path" : "\/Volumes\/VOLUME\/*\/SensitiveContentAnalysis.framework\/SensitiveContentAnalysis",
    "name" : "SensitiveContentAnalysis",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5583142912,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SignalCompression",
    "size" : 98304,
    "uuid" : "894ed84c-0d08-3d67-869b-12788ee6a798",
    "path" : "\/Volumes\/VOLUME\/*\/SignalCompression.framework\/SignalCompression",
    "name" : "SignalCompression",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5826576384,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.ICE",
    "size" : 245760,
    "uuid" : "daf1cf0f-fe37-35be-bbde-a43a109d6571",
    "path" : "\/Volumes\/VOLUME\/*\/AVConference.framework\/Frameworks\/ICE.framework\/ICE",
    "name" : "ICE",
    "CFBundleVersion" : "2205.3.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5348966400,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.LegacyHandle",
    "size" : 16384,
    "uuid" : "94547076-efd6-35d9-a947-fe43d7bc0c90",
    "path" : "\/Volumes\/VOLUME\/*\/AVConference.framework\/Frameworks\/LegacyHandle.framework\/LegacyHandle",
    "name" : "LegacyHandle",
    "CFBundleVersion" : "2205.3.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5540610048,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.SimpleKeyExchange",
    "size" : 32768,
    "uuid" : "6c096e38-c760-3efa-9858-808fba096929",
    "path" : "\/Volumes\/VOLUME\/*\/AVConference.framework\/Frameworks\/SimpleKeyExchange.framework\/SimpleKeyExchange",
    "name" : "SimpleKeyExchange",
    "CFBundleVersion" : "2205.3.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5460033536,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.snatmap",
    "size" : 16384,
    "uuid" : "faf343db-b1ec-337e-923c-8a8963323af8",
    "path" : "\/Volumes\/VOLUME\/*\/AVConference.framework\/Frameworks\/snatmap.framework\/snatmap",
    "name" : "snatmap",
    "CFBundleVersion" : "2205.3.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5881544704,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.ViceroyTrace",
    "size" : 983040,
    "uuid" : "15a250da-3780-374a-86e8-af82532e765b",
    "path" : "\/Volumes\/VOLUME\/*\/AVConference.framework\/Frameworks\/ViceroyTrace.framework\/ViceroyTrace",
    "name" : "ViceroyTrace",
    "CFBundleVersion" : "2205.3.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6015664128,
    "CFBundleShortVersionString" : "3075.0.8",
    "CFBundleIdentifier" : "com.apple.coremotion",
    "size" : 3784704,
    "uuid" : "c5e28ebf-2bd6-358c-8caf-e4ee62780c9a",
    "path" : "\/Volumes\/VOLUME\/*\/CoreMotion.framework\/CoreMotion",
    "name" : "CoreMotion",
    "CFBundleVersion" : "3075.0.8"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6049398784,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MediaAnalysis",
    "size" : 5029888,
    "uuid" : "36514498-2c20-34e0-9b5a-05d86913467a",
    "path" : "\/Volumes\/VOLUME\/*\/MediaAnalysis.framework\/MediaAnalysis",
    "name" : "MediaAnalysis",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5842681856,
    "CFBundleShortVersionString" : "267.122.1",
    "CFBundleIdentifier" : "com.apple.ManagedSettingsObjC",
    "size" : 262144,
    "uuid" : "fad216ae-783b-39b9-b821-21fbbe41b906",
    "path" : "\/Volumes\/VOLUME\/*\/ManagedSettingsObjC.framework\/ManagedSettingsObjC",
    "name" : "ManagedSettingsObjC",
    "CFBundleVersion" : "267.122.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5883658240,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.FamilyCircle",
    "size" : 1015808,
    "uuid" : "64803d8d-62cd-3a7d-baec-9a422f1f0c2a",
    "path" : "\/Volumes\/VOLUME\/*\/FamilyCircle.framework\/FamilyCircle",
    "name" : "FamilyCircle",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5582929920,
    "size" : 32768,
    "uuid" : "6330800c-f728-33fc-b6c4-ece4133de471",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftVideoToolbox.dylib",
    "name" : "libswiftVideoToolbox.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5479038976,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.ftclientservices",
    "size" : 16384,
    "uuid" : "743259ec-acb9-368d-9b3e-2ac9339b484d",
    "path" : "\/Volumes\/VOLUME\/*\/FTClientServices.framework\/FTClientServices",
    "name" : "FTClientServices",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5609701376,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.StorageContainersPrivate",
    "size" : 65536,
    "uuid" : "19993a2c-2ea7-3422-b3d0-a152cd8cde15",
    "path" : "\/Volumes\/VOLUME\/*\/StorageContainersPrivate.framework\/StorageContainersPrivate",
    "name" : "StorageContainersPrivate",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6010667008,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.accessibility.AXMediaUtilities",
    "size" : 999424,
    "uuid" : "4c586cb7-ae57-3466-8460-8da41f9982bc",
    "path" : "\/Volumes\/VOLUME\/*\/AXMediaUtilities.framework\/AXMediaUtilities",
    "name" : "AXMediaUtilities",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5843386368,
    "CFBundleShortVersionString" : "4.4.0",
    "CFBundleIdentifier" : "com.apple.CoreAppleCVA",
    "size" : 376832,
    "uuid" : "eb722b01-1960-3443-9e38-f3b8e8719076",
    "path" : "\/Volumes\/VOLUME\/*\/CoreAppleCVA.framework\/CoreAppleCVA",
    "name" : "CoreAppleCVA",
    "CFBundleVersion" : "4.4.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5479120896,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MediaAnalysisGeneration",
    "size" : 16384,
    "uuid" : "bd9ace1e-f075-36ab-8070-31a423e320a6",
    "path" : "\/Volumes\/VOLUME\/*\/MediaAnalysisGeneration.framework\/MediaAnalysisGeneration",
    "name" : "MediaAnalysisGeneration",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5070700544,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MediaAnalysisPhotosServices",
    "size" : 16384,
    "uuid" : "8931ded7-d127-3839-90c4-db04046b01bb",
    "path" : "\/Volumes\/VOLUME\/*\/MediaAnalysisPhotosServices.framework\/MediaAnalysisPhotosServices",
    "name" : "MediaAnalysisPhotosServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5879431168,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MediaAnalysisServices",
    "size" : 376832,
    "uuid" : "5d09a80d-5503-3e4a-bccb-56cacfa6a89e",
    "path" : "\/Volumes\/VOLUME\/*\/MediaAnalysisServices.framework\/MediaAnalysisServices",
    "name" : "MediaAnalysisServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6068813824,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotosIntelligence",
    "size" : 6160384,
    "uuid" : "e1b6fca6-f925-35a6-9a45-3989a1c4651f",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosIntelligence.framework\/PhotosIntelligence",
    "name" : "PhotosIntelligence",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6040289280,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SoundAnalysis",
    "size" : 2801664,
    "uuid" : "4b1936dd-ddd1-3f93-8fe5-9637e5fc1ba5",
    "path" : "\/Volumes\/VOLUME\/*\/SoundAnalysis.framework\/SoundAnalysis",
    "name" : "SoundAnalysis",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5880348672,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.stickers",
    "size" : 540672,
    "uuid" : "a21cafb6-e43b-33f8-b306-5beaae52dc7e",
    "path" : "\/Volumes\/VOLUME\/*\/Stickers.framework\/Stickers",
    "name" : "Stickers",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6079479808,
    "CFBundleShortVersionString" : "0.1",
    "CFBundleIdentifier" : "com.apple.VisualLookUp",
    "size" : 4849664,
    "uuid" : "b46f733c-7c3a-3442-97a8-8a5694bc0624",
    "path" : "\/Volumes\/VOLUME\/*\/VisualLookUp.framework\/VisualLookUp",
    "name" : "VisualLookUp",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5909708800,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.VisualUnderstanding",
    "size" : 933888,
    "uuid" : "d7ab6f62-6a53-3f60-a506-5c242a92a569",
    "path" : "\/Volumes\/VOLUME\/*\/VisualUnderstanding.framework\/VisualUnderstanding",
    "name" : "VisualUnderstanding",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5827887104,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.accessibility.AXAssetLoader",
    "size" : 114688,
    "uuid" : "f285409d-14b9-3ca4-8e66-a88ffc769ed5",
    "path" : "\/Volumes\/VOLUME\/*\/AXAssetLoader.framework\/AXAssetLoader",
    "name" : "AXAssetLoader",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5873516544,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotosSpatialMediaCore",
    "size" : 344064,
    "uuid" : "f4ac6968-21c6-3e90-a161-e499da479617",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosSpatialMediaCore.framework\/PhotosSpatialMediaCore",
    "name" : "PhotosSpatialMediaCore",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6159564800,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MusicKit",
    "size" : 5373952,
    "uuid" : "16ef51a3-9242-3fda-9663-e4461b296b95",
    "path" : "\/Volumes\/VOLUME\/*\/MusicKit.framework\/MusicKit",
    "name" : "MusicKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5844058112,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.FlexMusicKit",
    "size" : 294912,
    "uuid" : "00bc0357-d45c-3fea-a681-4b22568c3125",
    "path" : "\/Volumes\/VOLUME\/*\/FlexMusicKit.framework\/FlexMusicKit",
    "name" : "FlexMusicKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6183010304,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MusicKit.Internal",
    "size" : 7684096,
    "uuid" : "1b087232-8a3f-33c1-a033-68ce9cb6bb09",
    "path" : "\/Volumes\/VOLUME\/*\/MusicKitInternal.framework\/MusicKitInternal",
    "name" : "MusicKitInternal",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6044663808,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.photo.PhotoImaging",
    "size" : 2195456,
    "uuid" : "1592028c-211b-35f4-a5fa-c1f63d868462",
    "path" : "\/Volumes\/VOLUME\/*\/PhotoImaging.framework\/PhotoImaging",
    "name" : "PhotoImaging",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5874237440,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.mxi",
    "size" : 409600,
    "uuid" : "cebbfbec-76de-3250-9cfb-3807e1df81aa",
    "path" : "\/Volumes\/VOLUME\/*\/MXI.framework\/MXI",
    "name" : "MXI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6215548928,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RealityFoundation",
    "size" : 5636096,
    "uuid" : "464076f8-ab17-3166-ba42-1b8f61e9f5c7",
    "path" : "\/Volumes\/VOLUME\/*\/RealityFoundation.framework\/RealityFoundation",
    "name" : "RealityFoundation",
    "CFBundleVersion" : "403.120.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5121540096,
    "CFBundleIdentifier" : "com.apple.USDKitTrampoline",
    "size" : 16384,
    "uuid" : "99fb1ff8-93b4-37d8-acb9-89ec7c111bdc",
    "path" : "\/Volumes\/VOLUME\/*\/USDKit.framework\/USDKit",
    "name" : "USDKit",
    "CFBundleVersion" : "58.1.11"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5911085056,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.USDObjCKit",
    "size" : 507904,
    "uuid" : "e2d1b073-452d-3cad-8433-31c0fdf03e52",
    "path" : "\/Volumes\/VOLUME\/*\/USDObjCKit.framework\/USDObjCKit",
    "name" : "USDObjCKit",
    "CFBundleVersion" : "58.1.11"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6272548864,
    "size" : 27541504,
    "uuid" : "3c201b06-acdb-3005-8833-efa374e46c1d",
    "path" : "\/Volumes\/VOLUME\/*\/libusd_ms.dylib",
    "name" : "libusd_ms.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5545721856,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.USDLib_FormatLoaderProxy",
    "size" : 16384,
    "uuid" : "a2a5ddd5-aa5f-3317-afc9-87864a3b8aa0",
    "path" : "\/Volumes\/VOLUME\/*\/USDLib_FormatLoaderProxy.framework\/USDLib_FormatLoaderProxy",
    "name" : "USDLib_FormatLoaderProxy",
    "CFBundleVersion" : "23.5.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4684054528,
    "size" : 16384,
    "uuid" : "0d27e972-b6a5-3ca2-8422-6bf422b1c4a2",
    "path" : "\/Volumes\/VOLUME\/*\/libswift_errno.dylib",
    "name" : "libswift_errno.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6169477120,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreRealityIO",
    "size" : 3375104,
    "uuid" : "6150fd32-e9f6-38ee-b2bf-bba91d30f51d",
    "path" : "\/Volumes\/VOLUME\/*\/CoreRealityIO.framework\/CoreRealityIO",
    "name" : "CoreRealityIO",
    "CFBundleVersion" : "221.100.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6313639936,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreRE",
    "size" : 21151744,
    "uuid" : "ce725d38-6f80-35a6-8bfd-974b392e4eeb",
    "path" : "\/Volumes\/VOLUME\/*\/CoreRE.framework\/CoreRE",
    "name" : "CoreRE",
    "CFBundleVersion" : "403.120.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6020677632,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RealityFusion",
    "size" : 638976,
    "uuid" : "d8607cfd-ecc4-3209-b9b8-bf23a1895c55",
    "path" : "\/Volumes\/VOLUME\/*\/RealityFusion.framework\/RealityFusion",
    "name" : "RealityFusion",
    "CFBundleVersion" : "403.120.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5830279168,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.DirectResource",
    "size" : 114688,
    "uuid" : "737378e0-a57a-3449-bd43-20de41491568",
    "path" : "\/Volumes\/VOLUME\/*\/DirectResource.framework\/DirectResource",
    "name" : "DirectResource",
    "CFBundleVersion" : "19.100.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6013976576,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreIK",
    "size" : 671744,
    "uuid" : "15cc5047-f325-3eb8-b26a-6ce84b9ce6fb",
    "path" : "\/Volumes\/VOLUME\/*\/CoreIK.framework\/CoreIK",
    "name" : "CoreIK",
    "CFBundleVersion" : "266.0.17"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6058508288,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Geometry",
    "size" : 1228800,
    "uuid" : "b5c06739-4421-3459-a67b-1b50398f7ad9",
    "path" : "\/Volumes\/VOLUME\/*\/Geometry.framework\/Geometry",
    "name" : "Geometry",
    "CFBundleVersion" : "55.0.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6087409664,
    "CFBundleIdentifier" : "com.apple.shadergraph",
    "size" : 1835008,
    "uuid" : "50744647-5ac5-3317-b8d3-30507ceb08e8",
    "path" : "\/Volumes\/VOLUME\/*\/ShaderGraph.framework\/ShaderGraph",
    "name" : "ShaderGraph",
    "CFBundleVersion" : "124.100.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6197264384,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.audio.PHASE",
    "size" : 3096576,
    "uuid" : "ae0c21ce-56ea-3b73-8ba4-0128e9ddba85",
    "path" : "\/Volumes\/VOLUME\/*\/PHASE.framework\/PHASE",
    "name" : "PHASE",
    "CFBundleVersion" : "349.502"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6022086656,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RESync",
    "size" : 557056,
    "uuid" : "8273ef48-15e3-3dc9-808e-b1d723a97ca7",
    "path" : "\/Volumes\/VOLUME\/*\/RESync.framework\/RESync",
    "name" : "RESync",
    "CFBundleVersion" : "403.120.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5830639616,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.accessibility.PhotosensitivityProcessing",
    "size" : 131072,
    "uuid" : "5530e35d-ce58-3301-bf33-5b534750a087",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosensitivityProcessing.framework\/PhotosensitivityProcessing",
    "name" : "PhotosensitivityProcessing",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6060933120,
    "CFBundleShortVersionString" : "268.2.2",
    "CFBundleIdentifier" : "com.apple.ModelIO",
    "size" : 1409024,
    "uuid" : "2104618e-cc19-333b-8faf-222b5ac986af",
    "path" : "\/Volumes\/VOLUME\/*\/ModelIO.framework\/ModelIO",
    "name" : "ModelIO",
    "CFBundleVersion" : "268.2.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6023102464,
    "size" : 573440,
    "uuid" : "307860e6-86d2-3430-bf98-89d8d7c454b2",
    "path" : "\/Volumes\/VOLUME\/*\/libAudioDSPCore.dylib",
    "name" : "libAudioDSPCore.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5619236864,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AcousticMaterials",
    "size" : 65536,
    "uuid" : "61db9761-1f0e-38c3-a92e-11c8ddb6eba9",
    "path" : "\/Volumes\/VOLUME\/*\/AcousticMaterials.framework\/AcousticMaterials",
    "name" : "AcousticMaterials",
    "CFBundleVersion" : "24.0.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6177685504,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.ShazamKit",
    "size" : 884736,
    "uuid" : "e1ea7f6a-1c0c-3858-b087-f2d39b585a5e",
    "path" : "\/Volumes\/VOLUME\/*\/ShazamKit.framework\/ShazamKit",
    "name" : "ShazamKit",
    "CFBundleVersion" : "426.5.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5911822336,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.ShazamCore",
    "size" : 147456,
    "uuid" : "16df39b9-d032-3a59-aacb-2ade376326ae",
    "path" : "\/Volumes\/VOLUME\/*\/ShazamCore.framework\/ShazamCore",
    "name" : "ShazamCore",
    "CFBundleVersion" : "426.5.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6202720256,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.iTunesCloud",
    "size" : 2572288,
    "uuid" : "ffb0c195-c080-3d4a-8234-7e3cfebfdccb",
    "path" : "\/Volumes\/VOLUME\/*\/iTunesCloud.framework\/iTunesCloud",
    "name" : "iTunesCloud",
    "CFBundleVersion" : "4025.600.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5583781888,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.DAAPKit",
    "size" : 32768,
    "uuid" : "5ea4e174-2d02-3972-ba8b-b8e92cfdc16f",
    "path" : "\/Volumes\/VOLUME\/*\/DAAPKit.framework\/DAAPKit",
    "name" : "DAAPKit",
    "CFBundleVersion" : "4025.500.37"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6208077824,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.MusicLibrary",
    "size" : 3145728,
    "uuid" : "e88a20c0-f6db-312d-a474-8987784a0654",
    "path" : "\/Volumes\/VOLUME\/*\/MusicLibrary.framework\/MusicLibrary",
    "name" : "MusicLibrary",
    "CFBundleVersion" : "4025.600.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6234161152,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MediaLibraryCore",
    "size" : 3325952,
    "uuid" : "5c1ad378-ef29-353d-b443-bf4c265bf485",
    "path" : "\/Volumes\/VOLUME\/*\/MediaLibraryCore.framework\/MediaLibraryCore",
    "name" : "MediaLibraryCore",
    "CFBundleVersion" : "4025.500.35"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6239305728,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.photo.NeutrinoCore",
    "size" : 2834432,
    "uuid" : "8d2eaf79-6ad5-39a7-bd23-40a36cd1dfc1",
    "path" : "\/Volumes\/VOLUME\/*\/NeutrinoCore.framework\/NeutrinoCore",
    "name" : "NeutrinoCore",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5885706240,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.i18n.RecencyService",
    "size" : 163840,
    "uuid" : "1a1dc354-25d1-3cfa-9950-0f0926f6b076",
    "path" : "\/Volumes\/VOLUME\/*\/Stickers.framework\/Support\/RecencyService.framework\/RecencyService",
    "name" : "RecencyService",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6244614144,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Coherence",
    "size" : 4259840,
    "uuid" : "37234a60-bedc-3546-9f81-2afb5da114bb",
    "path" : "\/Volumes\/VOLUME\/*\/Coherence.framework\/Coherence",
    "name" : "Coherence",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5205753856,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.i18n.ServiceShared",
    "size" : 16384,
    "uuid" : "244f2c64-9992-3e82-9914-9dfab4af2bc5",
    "path" : "\/Volumes\/VOLUME\/*\/Stickers.framework\/Support\/ServiceShared.framework\/ServiceShared",
    "name" : "ServiceShared",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6015025152,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.FusionTracker",
    "size" : 294912,
    "uuid" : "d8d2ad58-6c0b-30d5-8fd7-86a733692ab7",
    "path" : "\/Volumes\/VOLUME\/*\/FusionTracker.framework\/FusionTracker",
    "name" : "FusionTracker",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6350422016,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PegasusAPI",
    "size" : 10682368,
    "uuid" : "da1b38c1-956e-34e1-ab82-ef79378292ca",
    "path" : "\/Volumes\/VOLUME\/*\/PegasusAPI.framework\/PegasusAPI",
    "name" : "PegasusAPI",
    "CFBundleVersion" : "3525.4.2.11.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6062833664,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PegasusKit",
    "size" : 606208,
    "uuid" : "4b60c6de-7762-3cef-a5f2-e2013a0c0a75",
    "path" : "\/Volumes\/VOLUME\/*\/PegasusKit.framework\/PegasusKit",
    "name" : "PegasusKit",
    "CFBundleVersion" : "3525.4.2.11.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6066241536,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.siri.parsec.CoreParsec",
    "size" : 1048576,
    "uuid" : "de022525-b12b-30bb-bd9c-c6bb9ed25e89",
    "path" : "\/Volumes\/VOLUME\/*\/CoreParsec.framework\/CoreParsec",
    "name" : "CoreParsec",
    "CFBundleVersion" : "3525.4.2.11.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6259916800,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SearchFoundation",
    "size" : 4734976,
    "uuid" : "af98a512-1d49-33e9-b134-084208b4721b",
    "path" : "\/Volumes\/VOLUME\/*\/SearchFoundation.framework\/SearchFoundation",
    "name" : "SearchFoundation",
    "CFBundleVersion" : "3525.4.2.11.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6024101888,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PegasusConfiguration",
    "size" : 327680,
    "uuid" : "440c48ec-a69a-3e0d-ae64-f99f746abac5",
    "path" : "\/Volumes\/VOLUME\/*\/PegasusConfiguration.framework\/PegasusConfiguration",
    "name" : "PegasusConfiguration",
    "CFBundleVersion" : "15000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6063947776,
    "CFBundleShortVersionString" : "2.0.0",
    "CFBundleIdentifier" : "com.apple.GRPCCoreInternal",
    "size" : 507904,
    "uuid" : "9d9ca837-4ff7-3092-9501-73d59ab53f97",
    "path" : "\/Volumes\/VOLUME\/*\/GRPCCoreInternal.framework\/GRPCCoreInternal",
    "name" : "GRPCCoreInternal",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5826215936,
    "CFBundleShortVersionString" : "2.0.0",
    "CFBundleIdentifier" : "com.apple.GRPCProtobufInternal",
    "size" : 131072,
    "uuid" : "b7dde3eb-4dc1-340e-aa36-fc1eed75f05d",
    "path" : "\/Volumes\/VOLUME\/*\/GRPCProtobufInternal.framework\/GRPCProtobufInternal",
    "name" : "GRPCProtobufInternal",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6013386752,
    "CFBundleShortVersionString" : "1.3.0",
    "CFBundleIdentifier" : "com.apple.GRPCSwiftURLSessionTransportInternal",
    "size" : 262144,
    "uuid" : "661ad2ac-f7ee-39c9-b35e-697739369975",
    "path" : "\/Volumes\/VOLUME\/*\/GRPCURLSessionTransportInternal.framework\/GRPCURLSessionTransportInternal",
    "name" : "GRPCURLSessionTransportInternal",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6012928000,
    "CFBundleShortVersionString" : "820.5.18",
    "CFBundleIdentifier" : "com.apple.GameKit",
    "size" : 212992,
    "uuid" : "021e3711-6440-3718-a267-bc1688406417",
    "path" : "\/Volumes\/VOLUME\/*\/GameKit.framework\/GameKit",
    "name" : "GameKit",
    "CFBundleVersion" : "820.5.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5546622976,
    "size" : 16384,
    "uuid" : "68bd97d6-f2a9-324c-a237-376509b06f82",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftGLKit.dylib",
    "name" : "libswiftGLKit.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5550342144,
    "size" : 16384,
    "uuid" : "f3371b80-7df0-39ed-b6d5-6acca4db0e2f",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftGameplayKit.dylib",
    "name" : "libswiftGameplayKit.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5556551680,
    "size" : 16384,
    "uuid" : "2456efff-9ccc-347a-9760-e11c094c48bc",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftModelIO.dylib",
    "name" : "libswiftModelIO.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5597446144,
    "size" : 16384,
    "uuid" : "807ec03c-fae0-37c8-88bd-afdc55c418d8",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftSceneKit.dylib",
    "name" : "libswiftSceneKit.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5550833664,
    "size" : 16384,
    "uuid" : "03fdf501-35fe-39e8-b9bc-9dc203a92886",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftSpriteKit.dylib",
    "name" : "libswiftSpriteKit.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6252298240,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AuthenticationServicesCore",
    "size" : 1032192,
    "uuid" : "651ef6e8-d179-383c-a81d-34c6eca51c09",
    "path" : "\/Volumes\/VOLUME\/*\/AuthenticationServicesCore.framework\/AuthenticationServicesCore",
    "name" : "AuthenticationServicesCore",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6181257216,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.OnBoardingKit",
    "size" : 442368,
    "uuid" : "e612b5dd-d1f4-310d-8c8a-d01bb6efc158",
    "path" : "\/Volumes\/VOLUME\/*\/OnBoardingKit.framework\/OnBoardingKit",
    "name" : "OnBoardingKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6269435904,
    "CFBundleShortVersionString" : "1",
    "CFBundleIdentifier" : "com.apple.preferences-framework",
    "size" : 1277952,
    "uuid" : "97bb9d1a-7897-338e-92a4-6ce4e8d342e1",
    "path" : "\/Volumes\/VOLUME\/*\/Preferences.framework\/Preferences",
    "name" : "Preferences",
    "CFBundleVersion" : "5300.4.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6256295936,
    "CFBundleShortVersionString" : "8624",
    "CFBundleIdentifier" : "com.apple.WebBookmarks",
    "size" : 999424,
    "uuid" : "75055fc7-f51d-323a-b898-61dd594b5459",
    "path" : "\/Volumes\/VOLUME\/*\/WebBookmarks.framework\/WebBookmarks",
    "name" : "WebBookmarks",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6381748224,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.ContactsUI",
    "size" : 5128192,
    "uuid" : "98960055-d6cc-37d1-b9ba-f5d9898d1e3b",
    "path" : "\/Volumes\/VOLUME\/*\/ContactsUI.framework\/ContactsUI",
    "name" : "ContactsUI",
    "CFBundleVersion" : "1424.600.21.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5652119552,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CertUI",
    "size" : 32768,
    "uuid" : "0bf95b13-418d-3e7c-9172-0a5c82dd2ccf",
    "path" : "\/Volumes\/VOLUME\/*\/CertUI.framework\/CertUI",
    "name" : "CertUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6392954880,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PencilKit",
    "size" : 4521984,
    "uuid" : "229aa7d9-178d-3036-b391-f04e9fc4e684",
    "path" : "\/Volumes\/VOLUME\/*\/PencilKit.framework\/PencilKit",
    "name" : "PencilKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6213697536,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ContactsAutocompleteUI",
    "size" : 507904,
    "uuid" : "b280760d-63de-38b8-9a9b-acc7ffe092d3",
    "path" : "\/Volumes\/VOLUME\/*\/ContactsAutocompleteUI.framework\/ContactsAutocompleteUI",
    "name" : "ContactsAutocompleteUI",
    "CFBundleVersion" : "819.600.11"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6374621184,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.messageui",
    "size" : 1933312,
    "uuid" : "05383591-586d-3e34-8e1c-237656c8f9aa",
    "path" : "\/Volumes\/VOLUME\/*\/MessageUI.framework\/MessageUI",
    "name" : "MessageUI",
    "CFBundleVersion" : "3864.600.51.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6411517952,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Passwords.PasswordManagerUI.framework",
    "size" : 5046272,
    "uuid" : "c23330ea-4278-3c7b-a8a9-0fa338933b30",
    "path" : "\/Volumes\/VOLUME\/*\/PasswordManagerUI.framework\/PasswordManagerUI",
    "name" : "PasswordManagerUI",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6250397696,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.DeviceManagement",
    "size" : 376832,
    "uuid" : "1553dd9d-ff4d-3169-b4e1-79a349d7c162",
    "path" : "\/Volumes\/VOLUME\/*\/DeviceManagement.framework\/DeviceManagement",
    "name" : "DeviceManagement",
    "CFBundleVersion" : "249.100.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5651988480,
    "CFBundleShortVersionString" : "26.5",
    "CFBundleIdentifier" : "com.apple.browsersupportkit.framework",
    "size" : 16384,
    "uuid" : "906dc30f-f2fe-3741-91cc-141d24a790ad",
    "path" : "\/Volumes\/VOLUME\/*\/BrowserSupportKit.framework\/BrowserSupportKit",
    "name" : "BrowserSupportKit",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5886033920,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BiometricKit2",
    "size" : 81920,
    "uuid" : "5c6aae88-d76b-3423-902f-4d8c52cc5191",
    "path" : "\/Volumes\/VOLUME\/*\/BiometricKit.framework\/BiometricKit",
    "name" : "BiometricKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12906823680,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PassKitCore",
    "size" : 9928704,
    "uuid" : "c1726482-d02c-3226-bd34-97f69da7daf7",
    "path" : "\/Volumes\/VOLUME\/*\/PassKitCore.framework\/PassKitCore",
    "name" : "PassKitCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6370574336,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppStoreComponents",
    "size" : 802816,
    "uuid" : "6a696c41-5f1d-32f9-a7c3-42c6472710d6",
    "path" : "\/Volumes\/VOLUME\/*\/AppStoreComponents.framework\/AppStoreComponents",
    "name" : "AppStoreComponents",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6420807680,
    "CFBundleShortVersionString" : "26.5",
    "CFBundleIdentifier" : "com.apple.mobilesafari.framework",
    "size" : 5013504,
    "uuid" : "b767803b-6321-3c07-bd33-f93220079dcd",
    "path" : "\/Volumes\/VOLUME\/*\/MobileSafari.framework\/MobileSafari",
    "name" : "MobileSafari",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6406356992,
    "CFBundleShortVersionString" : "8624",
    "CFBundleIdentifier" : "com.apple.Safari.Shared.UI",
    "size" : 1900544,
    "uuid" : "f694a894-e433-3798-97d1-77bb14b469b1",
    "path" : "\/Volumes\/VOLUME\/*\/SafariSharedUI.framework\/SafariSharedUI",
    "name" : "SafariSharedUI",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6064799744,
    "CFBundleShortVersionString" : "8624",
    "CFBundleIdentifier" : "com.apple.SafariFoundation",
    "size" : 262144,
    "uuid" : "95ec1a1f-160a-3509-9ac9-49a7fb768d9f",
    "path" : "\/Volumes\/VOLUME\/*\/SafariFoundation.framework\/SafariFoundation",
    "name" : "SafariFoundation",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12884901888,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MediaPlayer",
    "size" : 4472832,
    "uuid" : "de3d702e-e6fc-3e24-a939-f20bafe5a81a",
    "path" : "\/Volumes\/VOLUME\/*\/MediaPlayer.framework\/MediaPlayer",
    "name" : "MediaPlayer",
    "CFBundleVersion" : "4025.600.6"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6024724480,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppProtectionUI",
    "size" : 147456,
    "uuid" : "589a2f7c-d2e0-32c4-911b-32c6847adfc8",
    "path" : "\/Volumes\/VOLUME\/*\/AppProtectionUI.framework\/AppProtectionUI",
    "name" : "AppProtectionUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6255116288,
    "CFBundleShortVersionString" : "97",
    "CFBundleIdentifier" : "com.apple.ExtensionKit",
    "size" : 278528,
    "uuid" : "7b9fa404-1791-3042-8a7a-ab3b1bc069b9",
    "path" : "\/Volumes\/VOLUME\/*\/ExtensionKit.framework\/ExtensionKit",
    "name" : "ExtensionKit",
    "CFBundleVersion" : "97"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6091849728,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.WebUI",
    "size" : 278528,
    "uuid" : "05b50fae-7c5b-3b7a-b663-b0954baaf871",
    "path" : "\/Volumes\/VOLUME\/*\/WebUI.framework\/WebUI",
    "name" : "WebUI",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6429999104,
    "CFBundleShortVersionString" : "8624",
    "CFBundleIdentifier" : "com.apple.Safari.Core",
    "size" : 1785856,
    "uuid" : "88200411-d721-3770-91b1-a91c75cf05ca",
    "path" : "\/Volumes\/VOLUME\/*\/SafariCore.framework\/SafariCore",
    "name" : "SafariCore",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5874843648,
    "size" : 32768,
    "uuid" : "19dbcee6-7802-3d8e-8091-a73808b58ac2",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftMapKit.dylib",
    "name" : "libswiftMapKit.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6378668032,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AuthKitUI",
    "size" : 1097728,
    "uuid" : "43999bc5-0cf7-3a56-8366-945393138dfa",
    "path" : "\/Volumes\/VOLUME\/*\/AuthKitUI.framework\/AuthKitUI",
    "name" : "AuthKitUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6182273024,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppSSO",
    "size" : 262144,
    "uuid" : "fb1de6fc-dd63-33f0-a4a8-f18eb8972ca3",
    "path" : "\/Volumes\/VOLUME\/*\/AppSSO.framework\/AppSSO",
    "name" : "AppSSO",
    "CFBundleVersion" : "483.120.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6025084928,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.LocalAuthenticationPrivateUI",
    "size" : 147456,
    "uuid" : "5e44f6aa-8765-365a-8642-413dca092364",
    "path" : "\/Volumes\/VOLUME\/*\/LocalAuthenticationPrivateUI.framework\/LocalAuthenticationPrivateUI",
    "name" : "LocalAuthenticationPrivateUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6214877184,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.LocalAuthenticationEmbeddedUI",
    "size" : 245760,
    "uuid" : "010c3221-521f-39c5-8b51-c163913fd53c",
    "path" : "\/Volumes\/VOLUME\/*\/LocalAuthenticationEmbeddedUI.framework\/LocalAuthenticationEmbeddedUI",
    "name" : "LocalAuthenticationEmbeddedUI",
    "CFBundleVersion" : "2005.120.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12894519296,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppIntents",
    "size" : 4145152,
    "uuid" : "6be06d5e-ff67-33e8-9fc4-c8cbfcdfe300",
    "path" : "\/Volumes\/VOLUME\/*\/AppIntents.framework\/AppIntents",
    "name" : "AppIntents",
    "CFBundleVersion" : "300.5.12"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5881282560,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RelevanceKit",
    "size" : 32768,
    "uuid" : "76db9b06-a39e-3ed4-8d5d-cc0f1ba39bbc",
    "path" : "\/Volumes\/VOLUME\/*\/RelevanceKit.framework\/RelevanceKit",
    "name" : "RelevanceKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6433865728,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.LinkServices",
    "size" : 1589248,
    "uuid" : "bebcdf81-4611-398c-aefa-c580863ad948",
    "path" : "\/Volumes\/VOLUME\/*\/LinkServices.framework\/LinkServices",
    "name" : "LinkServices",
    "CFBundleVersion" : "300.5.12"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6372343808,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ActivityKit",
    "size" : 835584,
    "uuid" : "fd3ac0c6-53d5-3735-88c7-e93eb236c4a9",
    "path" : "\/Volumes\/VOLUME\/*\/ActivityKit.framework\/ActivityKit",
    "name" : "ActivityKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5912199168,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.appintents.AppIntentsTypeSupport",
    "size" : 65536,
    "uuid" : "80ebc048-3407-3850-932a-aea1cf6c8304",
    "path" : "\/Volumes\/VOLUME\/*\/AppIntentsTypeSupport.framework\/AppIntentsTypeSupport",
    "name" : "AppIntentsTypeSupport",
    "CFBundleVersion" : "300.5.12"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6380732416,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.DoNotDisturb",
    "size" : 425984,
    "uuid" : "77df2e83-ee19-3a48-91db-890129837c69",
    "path" : "\/Volumes\/VOLUME\/*\/DoNotDisturb.framework\/DoNotDisturb",
    "name" : "DoNotDisturb",
    "CFBundleVersion" : "468.5.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6437060608,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.LinkMetadata",
    "size" : 1376256,
    "uuid" : "1e7f6bcc-fbac-37ce-ab7c-0645ea2da49f",
    "path" : "\/Volumes\/VOLUME\/*\/LinkMetadata.framework\/LinkMetadata",
    "name" : "LinkMetadata",
    "CFBundleVersion" : "300.5.12"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6065438720,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.IntentsCore",
    "size" : 147456,
    "uuid" : "8e5b84a5-e6a1-3d72-9dbc-568205ab497b",
    "path" : "\/Volumes\/VOLUME\/*\/IntentsCore.framework\/IntentsCore",
    "name" : "IntentsCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5653544960,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AvailabilityKit",
    "size" : 16384,
    "uuid" : "6aa56142-bb2f-3a6b-ada2-7047b280e799",
    "path" : "\/Volumes\/VOLUME\/*\/AvailabilityKit.framework\/AvailabilityKit",
    "name" : "AvailabilityKit",
    "CFBundleVersion" : "116.600.22"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6065815552,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.internal.SessionAssertion",
    "size" : 147456,
    "uuid" : "d11f7f5f-ec47-352a-9fdf-0199e6766dfe",
    "path" : "\/Volumes\/VOLUME\/*\/SessionAssertion.framework\/SessionAssertion",
    "name" : "SessionAssertion",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6402359296,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppIntentSchemas",
    "size" : 524288,
    "uuid" : "24c2576c-4ef9-3691-8381-3b94e867173e",
    "path" : "\/Volumes\/VOLUME\/*\/AppIntentSchemas.framework\/AppIntentSchemas",
    "name" : "AppIntentSchemas",
    "CFBundleVersion" : "3501.5.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5660721152,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GeoToolbox",
    "size" : 32768,
    "uuid" : "a8c04f3c-4bf5-3b39-b15a-ce52d3225bc1",
    "path" : "\/Volumes\/VOLUME\/*\/GeoToolbox.framework\/GeoToolbox",
    "name" : "GeoToolbox",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6254280704,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.StatusKit",
    "size" : 212992,
    "uuid" : "284d03b4-bbcc-34d6-a541-72c4ae957744",
    "path" : "\/Volumes\/VOLUME\/*\/StatusKit.framework\/StatusKit",
    "name" : "StatusKit",
    "CFBundleVersion" : "116.600.22"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6049021952,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.internal.SessionFoundation",
    "size" : 49152,
    "uuid" : "37dc19f8-4947-38da-9e02-5afbf84d0c65",
    "path" : "\/Volumes\/VOLUME\/*\/SessionFoundation.framework\/SessionFoundation",
    "name" : "SessionFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12928843776,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RemoteUI",
    "size" : 1654784,
    "uuid" : "96595c15-b1ae-3059-92a8-8c48a3badf61",
    "path" : "\/Volumes\/VOLUME\/*\/RemoteUI.framework\/RemoteUI",
    "name" : "RemoteUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6440009728,
    "CFBundleIdentifier" : "com.apple.LocalAuthenticationCoreUI",
    "size" : 442368,
    "uuid" : "74f2df25-6812-3cda-a35c-96f2e6ab425b",
    "path" : "\/Volumes\/VOLUME\/*\/LocalAuthenticationCoreUI.framework\/LocalAuthenticationCoreUI",
    "name" : "LocalAuthenticationCoreUI",
    "CFBundleVersion" : "2005.120.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12902219776,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SpringBoardUIServices",
    "size" : 1048576,
    "uuid" : "3c945644-88cf-34a0-9eb9-901f4584fb1d",
    "path" : "\/Volumes\/VOLUME\/*\/SpringBoardUIServices.framework\/SpringBoardUIServices",
    "name" : "SpringBoardUIServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6258311168,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BannerKit",
    "size" : 311296,
    "uuid" : "26c38b0f-993a-30aa-a990-8e9e20bcdca0",
    "path" : "\/Volumes\/VOLUME\/*\/BannerKit.framework\/BannerKit",
    "name" : "BannerKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12932104192,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PaperBoardUI",
    "size" : 819200,
    "uuid" : "22d09bc2-09cc-3d7d-b97c-6eaf532136a1",
    "path" : "\/Volumes\/VOLUME\/*\/PaperBoardUI.framework\/PaperBoardUI",
    "name" : "PaperBoardUI",
    "CFBundleVersion" : "304.5.4.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6251823104,
    "CFBundleShortVersionString" : "173.7",
    "CFBundleIdentifier" : "com.apple.MetalKit",
    "size" : 114688,
    "uuid" : "eb056492-7690-3852-89d6-7f33334d1bd1",
    "path" : "\/Volumes\/VOLUME\/*\/MetalKit.framework\/MetalKit",
    "name" : "MetalKit",
    "CFBundleVersion" : "173.7"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6373965824,
    "CFBundleShortVersionString" : "732.1.1",
    "CFBundleIdentifier" : "com.apple.BaseBoardUI",
    "size" : 180224,
    "uuid" : "a8f79d83-36a2-3f57-9f65-bf615c58b09f",
    "path" : "\/Volumes\/VOLUME\/*\/BaseBoardUI.framework\/BaseBoardUI",
    "name" : "BaseBoardUI",
    "CFBundleVersion" : "732.1.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12934086656,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SpringBoardFoundation",
    "size" : 950272,
    "uuid" : "98ab4494-cd52-3b7d-abda-7a5794885feb",
    "path" : "\/Volumes\/VOLUME\/*\/SpringBoardFoundation.framework\/SpringBoardFoundation",
    "name" : "SpringBoardFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12904873984,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.icloud.SPOwner",
    "size" : 655360,
    "uuid" : "5ffb17a8-ebeb-3df1-84bb-b35f5934d8a2",
    "path" : "\/Volumes\/VOLUME\/*\/SPOwner.framework\/SPOwner",
    "name" : "SPOwner"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6404440064,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TelephonyUI",
    "size" : 442368,
    "uuid" : "732924f7-7506-3924-b38c-84073d457432",
    "path" : "\/Volumes\/VOLUME\/*\/TelephonyUI.framework\/TelephonyUI",
    "name" : "TelephonyUI",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6259081216,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MaterialKit",
    "size" : 114688,
    "uuid" : "c20d745a-159d-397c-96b3-98d99ac2369b",
    "path" : "\/Volumes\/VOLUME\/*\/MaterialKit.framework\/MaterialKit",
    "name" : "MaterialKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5826936832,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ProgressUI",
    "size" : 32768,
    "uuid" : "d2e23cf4-a6c3-3f05-ba98-62e18d9420ae",
    "path" : "\/Volumes\/VOLUME\/*\/ProgressUI.framework\/ProgressUI",
    "name" : "ProgressUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12942065664,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.eventkitui",
    "size" : 2768896,
    "uuid" : "45100ae5-59f4-3576-95d0-05e9e186bf80",
    "path" : "\/Volumes\/VOLUME\/*\/EventKitUI.framework\/EventKitUI",
    "name" : "EventKitUI",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6049169408,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PrototypeToolsUI",
    "size" : 81920,
    "uuid" : "b6ace50f-5c9c-33c4-bbed-8f3272be0ccb",
    "path" : "\/Volumes\/VOLUME\/*\/PrototypeToolsUI.framework\/PrototypeToolsUI",
    "name" : "PrototypeToolsUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12947996672,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.StoreKit",
    "size" : 1916928,
    "uuid" : "e52c2f43-330e-33f0-875d-3b000b041052",
    "path" : "\/Volumes\/VOLUME\/*\/StoreKit.framework\/StoreKit",
    "name" : "StoreKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12937314304,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.contacts.ContactsAutocomplete",
    "size" : 475136,
    "uuid" : "56866cee-afc7-30c4-95f0-a3dde488a1f8",
    "path" : "\/Volumes\/VOLUME\/*\/ContactsAutocomplete.framework\/ContactsAutocomplete",
    "name" : "ContactsAutocomplete",
    "CFBundleVersion" : "1356.500.41"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12951781376,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.calendar.CalendarLink",
    "size" : 1081344,
    "uuid" : "32365ceb-ac40-34fc-a0ad-5e56ca65116f",
    "path" : "\/Volumes\/VOLUME\/*\/CalendarLink.framework\/CalendarLink",
    "name" : "CalendarLink",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12940214272,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CalendarDaemon",
    "size" : 737280,
    "uuid" : "cd3ad051-fca8-3edf-8e21-7513b8cf8fd5",
    "path" : "\/Volumes\/VOLUME\/*\/CalendarDaemon.framework\/CalendarDaemon",
    "name" : "CalendarDaemon"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12961038336,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MapKit",
    "size" : 3260416,
    "uuid" : "a5362efa-2aef-35d1-bdd6-a4179697c355",
    "path" : "\/Volumes\/VOLUME\/*\/MapKit.framework\/MapKit",
    "name" : "MapKit",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6255968256,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MailServices",
    "size" : 114688,
    "uuid" : "5f73ec3e-2934-37a6-b84e-ea14989f840e",
    "path" : "\/Volumes\/VOLUME\/*\/MailServices.framework\/MailServices",
    "name" : "MailServices",
    "CFBundleVersion" : "3864.600.51.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12956008448,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CalendarDatabase",
    "size" : 1196032,
    "uuid" : "c68379dd-fa43-30ff-8fbf-0dd6b6e28c51",
    "path" : "\/Volumes\/VOLUME\/*\/CalendarDatabase.framework\/CalendarDatabase",
    "name" : "CalendarDatabase"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12953829376,
    "CFBundleShortVersionString" : "8.0",
    "CFBundleIdentifier" : "com.apple.CalendarFoundation",
    "size" : 573440,
    "uuid" : "ddae69b7-eae9-3e5c-bb7d-7e66aa12f66b",
    "path" : "\/Volumes\/VOLUME\/*\/CalendarFoundation.framework\/CalendarFoundation",
    "name" : "CalendarFoundation",
    "CFBundleVersion" : "1603.4.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12973015040,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CalendarUIKit",
    "size" : 2572288,
    "uuid" : "3e66d505-efde-395d-ade8-10e23f847538",
    "path" : "\/Volumes\/VOLUME\/*\/CalendarUIKit.framework\/CalendarUIKit",
    "name" : "CalendarUIKit",
    "CFBundleVersion" : "1279.4.17"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12977881088,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.eventkit",
    "size" : 1916928,
    "uuid" : "fb93216f-ba89-3f83-9455-2ee1ded34138",
    "path" : "\/Volumes\/VOLUME\/*\/EventKit.framework\/EventKit",
    "name" : "EventKit",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6068551680,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.appstore.foundation",
    "size" : 65536,
    "uuid" : "0cbecb85-aefc-399d-9c51-19294791db39",
    "path" : "\/Volumes\/VOLUME\/*\/AppStoreFoundation.framework\/AppStoreFoundation",
    "name" : "AppStoreFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6251511808,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppStoreOverlays",
    "size" : 65536,
    "uuid" : "d8edb2b8-6f4a-3c52-95a8-15210caaa70d",
    "path" : "\/Volumes\/VOLUME\/*\/AppStoreOverlays.framework\/AppStoreOverlays",
    "name" : "AppStoreOverlays",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6405439488,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.mobileasset.BackgroundAssets",
    "size" : 442368,
    "uuid" : "eb00415f-57e2-3ee6-b9e2-36272243b1d0",
    "path" : "\/Volumes\/VOLUME\/*\/BackgroundAssets.framework\/BackgroundAssets",
    "name" : "BackgroundAssets",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12981927936,
    "CFBundleIdentifier" : "com.apple.storeservices",
    "size" : 1998848,
    "uuid" : "90f45235-53d5-3244-8b57-047d192a4273",
    "path" : "\/Volumes\/VOLUME\/*\/StoreServices.framework\/StoreServices",
    "name" : "StoreServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6403457024,
    "size" : 114688,
    "uuid" : "a69c5ff1-a36e-3d97-8417-825745c3d6a0",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftAppleArchive.dylib",
    "name" : "libswiftAppleArchive.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5607686144,
    "size" : 16384,
    "uuid" : "ff9548ef-e645-3a52-82c7-9cb25bbe36c0",
    "path" : "\/Volumes\/VOLUME\/*\/libBASupport.dylib",
    "name" : "libBASupport.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5307006976,
    "size" : 16384,
    "uuid" : "f3ab7fc6-0aa0-3107-95ca-b8a58c216c9c",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftExtensionFoundation.dylib",
    "name" : "libswiftExtensionFoundation.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12958187520,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.backgroundassets.managed.helper",
    "size" : 1097728,
    "uuid" : "96922552-4c64-33af-8854-5ebd3d723aef",
    "path" : "\/Volumes\/VOLUME\/*\/ManagedBackgroundAssetsHelper.framework\/ManagedBackgroundAssetsHelper",
    "name" : "ManagedBackgroundAssetsHelper"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6259408896,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.backgroundassets.managed",
    "size" : 114688,
    "uuid" : "51c5576d-1e41-320f-82cf-0e0cd041e96a",
    "path" : "\/Volumes\/VOLUME\/*\/ManagedBackgroundAssets.framework\/ManagedBackgroundAssets",
    "name" : "ManagedBackgroundAssets"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6182830080,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.backgroundassets.managed.helper.fetching",
    "size" : 49152,
    "uuid" : "95a2e562-00a4-3a2b-8462-1c5ca92025a0",
    "path" : "\/Volumes\/VOLUME\/*\/ManagedBackgroundAssetsHelperFetching.framework\/ManagedBackgroundAssetsHelperFetching",
    "name" : "ManagedBackgroundAssetsHelperFetching"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6410371072,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.backgroundassets.managed.xpc",
    "size" : 196608,
    "uuid" : "7b716694-48c2-3873-b675-76b507e834c6",
    "path" : "\/Volumes\/VOLUME\/*\/ManagedBackgroundAssetsXPC.framework\/ManagedBackgroundAssetsXPC",
    "name" : "ManagedBackgroundAssetsXPC"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6410747904,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SpaceAttributionFramework",
    "size" : 114688,
    "uuid" : "465f4863-0dc0-37ab-bf17-c592358266f1",
    "path" : "\/Volumes\/VOLUME\/*\/SpaceAttribution.framework\/SpaceAttribution",
    "name" : "SpaceAttribution",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6411059200,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.NetAppsUtilities",
    "size" : 163840,
    "uuid" : "2923054d-f68a-324f-ab0d-6dc0d2034fc2",
    "path" : "\/Volumes\/VOLUME\/*\/NetAppsUtilities.framework\/NetAppsUtilities",
    "name" : "NetAppsUtilities",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6403915776,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.settingsandcoreapps.SettingsFoundation",
    "size" : 98304,
    "uuid" : "22084116-fd97-35b9-9968-178a0d26557e",
    "path" : "\/Volumes\/VOLUME\/*\/SettingsFoundation.framework\/SettingsFoundation",
    "name" : "SettingsFoundation",
    "CFBundleVersion" : "1087.5.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6252134400,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.-IconServices-SwiftUI",
    "size" : 65536,
    "uuid" : "f22cc8d9-b57f-3275-8da2-07b98fff761e",
    "path" : "\/Volumes\/VOLUME\/*\/_IconServices_SwiftUI.framework\/_IconServices_SwiftUI",
    "name" : "_IconServices_SwiftUI",
    "CFBundleVersion" : "743.5.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5881430016,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppTrackingTransparency",
    "size" : 32768,
    "uuid" : "a259e571-9b2a-3f38-b14d-ce81da29d19e",
    "path" : "\/Volumes\/VOLUME\/*\/AppTrackingTransparency.framework\/AppTrackingTransparency",
    "name" : "AppTrackingTransparency",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6013845504,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.-AppIntentsServices.-AppIntents",
    "size" : 32768,
    "uuid" : "fcb51ef0-7f5a-3c57-9f1f-f3b8334256b5",
    "path" : "\/Volumes\/VOLUME\/*\/_AppIntentsServices_AppIntents.framework\/_AppIntentsServices_AppIntents",
    "name" : "_AppIntentsServices_AppIntents",
    "CFBundleVersion" : "40.5.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12986351616,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppIntentsServices",
    "size" : 2048000,
    "uuid" : "0600901c-34d1-36f3-85d6-e0c70a32561f",
    "path" : "\/Volumes\/VOLUME\/*\/AppIntentsServices.framework\/AppIntentsServices",
    "name" : "AppIntentsServices",
    "CFBundleVersion" : "40.5.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6259654656,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.corerecents",
    "size" : 98304,
    "uuid" : "1ec66be7-1e3f-3d68-94ed-e5a283e751bd",
    "path" : "\/Volumes\/VOLUME\/*\/CoreRecents.framework\/CoreRecents",
    "name" : "CoreRecents",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6254854144,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.-GeoToolbox-AppIntents",
    "size" : 49152,
    "uuid" : "42389eaf-b340-3f86-855e-0cf8449b8146",
    "path" : "\/Volumes\/VOLUME\/*\/_GeoToolbox_AppIntents.framework\/_GeoToolbox_AppIntents",
    "name" : "_GeoToolbox_AppIntents",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12906463232,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.-AppIntents-UIKit",
    "size" : 163840,
    "uuid" : "6573d7f2-3125-311a-9fdf-f38e9de5d00d",
    "path" : "\/Volumes\/VOLUME\/*\/_AppIntents_UIKit.framework\/_AppIntents_UIKit",
    "name" : "_AppIntents_UIKit",
    "CFBundleVersion" : "300.5.12"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12968247296,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SwiftUI-MapKit-Additions",
    "size" : 819200,
    "uuid" : "4566f5ea-927e-3c60-84b3-7ea9987ccbca",
    "path" : "\/Volumes\/VOLUME\/*\/_MapKit_SwiftUI.framework\/_MapKit_SwiftUI",
    "name" : "_MapKit_SwiftUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12993724416,
    "CFBundleIdentifier" : "com.apple.widgetkit",
    "size" : 2228224,
    "uuid" : "7ec82c68-32cb-34d2-892d-26e33bf74184",
    "path" : "\/Volumes\/VOLUME\/*\/WidgetKit.framework\/WidgetKit",
    "name" : "WidgetKit",
    "CFBundleVersion" : "664.5.28.100"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12938510336,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.dataaccess.framework",
    "size" : 409600,
    "uuid" : "f5e50348-d9e3-32b7-9057-95682de2d2a2",
    "path" : "\/Volumes\/VOLUME\/*\/DataAccess.framework\/DataAccess",
    "name" : "DataAccess",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12997672960,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.AccessibilityUtilities",
    "size" : 1671168,
    "uuid" : "e268fbc9-74ec-3f30-be41-3b3fc4d75a45",
    "path" : "\/Volumes\/VOLUME\/*\/AccessibilityUtilities.framework\/AccessibilityUtilities",
    "name" : "AccessibilityUtilities",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12971032576,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreRoutine",
    "size" : 573440,
    "uuid" : "b3f2f471-9dac-3f9f-9e4e-a33ca3eef6c5",
    "path" : "\/Volumes\/VOLUME\/*\/CoreRoutine.framework\/CoreRoutine",
    "name" : "CoreRoutine",
    "CFBundleVersion" : "1075.0.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12991627264,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GeoAnalytics",
    "size" : 819200,
    "uuid" : "cd2796c2-db65-3df1-9d34-1d920b902612",
    "path" : "\/Volumes\/VOLUME\/*\/GeoAnalytics.framework\/GeoAnalytics",
    "name" : "GeoAnalytics",
    "CFBundleVersion" : "2031.35.2.9.20"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13005340672,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Navigation",
    "size" : 2015232,
    "uuid" : "4ba99dad-5ec3-38d8-976d-fad2e2126b0b",
    "path" : "\/Volumes\/VOLUME\/*\/Navigation.framework\/Navigation",
    "name" : "Navigation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13039009792,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.VectorKit",
    "size" : 14221312,
    "uuid" : "34c6a942-c386-3dca-a1b1-a31bef80beb4",
    "path" : "\/Volumes\/VOLUME\/*\/VectorKit.framework\/VectorKit",
    "name" : "VectorKit",
    "CFBundleVersion" : "2001.35.2.9.9"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12936134656,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.VirtualGarage",
    "size" : 294912,
    "uuid" : "c3eb1b86-2f16-31b1-b6ac-3dd62ee72d46",
    "path" : "\/Volumes\/VOLUME\/*\/VirtualGarage.framework\/VirtualGarage",
    "name" : "VirtualGarage",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12989956096,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CarKit",
    "size" : 524288,
    "uuid" : "04e9747b-85f6-34d3-9f66-382e4e4c06fe",
    "path" : "\/Volumes\/VOLUME\/*\/CarKit.framework\/CarKit",
    "name" : "CarKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6272270336,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CarPlayDisplayUtils",
    "size" : 49152,
    "uuid" : "cb591f9f-72b4-35fb-8139-33b656cfda8e",
    "path" : "\/Volumes\/VOLUME\/*\/CarPlayDisplayUtils.framework\/CarPlayDisplayUtils",
    "name" : "CarPlayDisplayUtils",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5632540672,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.-GeoServices-GeoToolbox",
    "size" : 16384,
    "uuid" : "5b5d1e2c-4b31-322f-9e30-b33f52da59c2",
    "path" : "\/Volumes\/VOLUME\/*\/_GeoServices_GeoToolbox.framework\/_GeoServices_GeoToolbox",
    "name" : "_GeoServices_GeoToolbox",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13009485824,
    "CFBundleIdentifier" : "com.apple.chronoservices",
    "size" : 1228800,
    "uuid" : "9897f37e-a0f2-3db8-b66c-55d4b7343ede",
    "path" : "\/Volumes\/VOLUME\/*\/ChronoServices.framework\/ChronoServices",
    "name" : "ChronoServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13003046912,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.private.ReplicatorServices",
    "size" : 1196032,
    "uuid" : "9004a739-5147-357e-9511-8c4a9e7b8956",
    "path" : "\/Volumes\/VOLUME\/*\/ReplicatorServices.framework\/ReplicatorServices",
    "name" : "ReplicatorServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13014351872,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.private.ReplicatorEngine",
    "size" : 1589248,
    "uuid" : "79d9a00d-fdd1-3e03-a072-236de4aa5e39",
    "path" : "\/Volumes\/VOLUME\/*\/ReplicatorEngine.framework\/ReplicatorEngine",
    "name" : "ReplicatorEngine",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6374408192,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.framework.ctcategories",
    "size" : 81920,
    "uuid" : "971ce950-ae0a-3c98-97ea-b3d614a1d925",
    "path" : "\/Volumes\/VOLUME\/*\/Categories.framework\/Categories",
    "name" : "Categories",
    "CFBundleVersion" : "49.4.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6272401408,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.IDSSimulatorSupport",
    "size" : 49152,
    "uuid" : "42ce171c-725b-3a44-9121-fdc281b04f59",
    "path" : "\/Volumes\/VOLUME\/*\/IDSSimulatorSupport.framework\/IDSSimulatorSupport",
    "name" : "IDSSimulatorSupport",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12955156480,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.internal.LocalStatusKit",
    "size" : 131072,
    "uuid" : "6f588cbd-33de-33ca-aaef-a88b43faa945",
    "path" : "\/Volumes\/VOLUME\/*\/LocalStatusKit.framework\/LocalStatusKit",
    "name" : "LocalStatusKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6442123264,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.contextkit.ContextKit",
    "size" : 98304,
    "uuid" : "c9f20b87-2952-3504-ac3c-7c71ee4707bb",
    "path" : "\/Volumes\/VOLUME\/*\/ContextKit.framework\/ContextKit",
    "name" : "ContextKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5912379392,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.contextkit.ContextKitCore",
    "size" : 32768,
    "uuid" : "49515a16-d493-3442-992e-b7fdfd2b0014",
    "path" : "\/Volumes\/VOLUME\/*\/ContextKitCore.framework\/ContextKitCore",
    "name" : "ContextKitCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13020119040,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SensitiveContentAnalysisUI",
    "size" : 1851392,
    "uuid" : "80b5e003-802e-3565-b6cd-2304e4d88f16",
    "path" : "\/Volumes\/VOLUME\/*\/SensitiveContentAnalysisUI.framework\/SensitiveContentAnalysisUI",
    "name" : "SensitiveContentAnalysisUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12939411456,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.contacts.donation",
    "size" : 114688,
    "uuid" : "72c4ae29-51be-3e72-b29c-d8e0fc229555",
    "path" : "\/Volumes\/VOLUME\/*\/ContactsDonation.framework\/ContactsDonation",
    "name" : "ContactsDonation"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13011992576,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.findmy.framework.FindMyLocate",
    "size" : 1064960,
    "uuid" : "e5190d53-83e2-354e-b400-c5128daff0ab",
    "path" : "\/Volumes\/VOLUME\/*\/FindMyLocate.framework\/FindMyLocate",
    "name" : "FindMyLocate",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12936724480,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MonogramPoster",
    "size" : 147456,
    "uuid" : "bc58f0f9-e38b-3e72-9d60-607103e3f439",
    "path" : "\/Volumes\/VOLUME\/*\/MonogramPoster.framework\/MonogramPoster",
    "name" : "MonogramPoster",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12959956992,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppSupportUI",
    "size" : 180224,
    "uuid" : "b17ae4e6-d12c-32db-9993-631ad5f1f188",
    "path" : "\/Volumes\/VOLUME\/*\/AppSupportUI.framework\/AppSupportUI",
    "name" : "AppSupportUI"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6441844736,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PersonaUI",
    "size" : 65536,
    "uuid" : "116a37d3-52dd-3461-a4f7-d05a2bf1c278",
    "path" : "\/Volumes\/VOLUME\/*\/PersonaUI.framework\/PersonaUI",
    "name" : "PersonaUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12936986624,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.siri.AIMLExperimentationAnalytics",
    "size" : 65536,
    "uuid" : "81033f0d-fe6e-3a1f-bffc-a39b9b87de1e",
    "path" : "\/Volumes\/VOLUME\/*\/AIMLExperimentationAnalytics.framework\/AIMLExperimentationAnalytics",
    "name" : "AIMLExperimentationAnalytics",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13030735872,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Contacts.ContactsUICore",
    "size" : 3670016,
    "uuid" : "63c72013-7a1f-32ae-af81-1569d82c2275",
    "path" : "\/Volumes\/VOLUME\/*\/ContactsUICore.framework\/ContactsUICore",
    "name" : "ContactsUICore",
    "CFBundleVersion" : "3683.600.21.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13001211904,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TemplateKit",
    "size" : 393216,
    "uuid" : "0eb2e415-c57c-3135-a29b-1d6fbe82aada",
    "path" : "\/Volumes\/VOLUME\/*\/TemplateKit.framework\/TemplateKit",
    "name" : "TemplateKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12960366592,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.-AppIntents-SwiftUI",
    "size" : 196608,
    "uuid" : "5f563f80-ad16-389f-be6e-d0b5845c77bc",
    "path" : "\/Volumes\/VOLUME\/*\/_AppIntents_SwiftUI.framework\/_AppIntents_SwiftUI",
    "name" : "_AppIntents_SwiftUI",
    "CFBundleVersion" : "300.5.12"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13016776704,
    "CFBundleIdentifier" : "com.apple.CommunicationTrust",
    "size" : 770048,
    "uuid" : "2853bc75-6b12-31ff-825f-214e1b7af8fa",
    "path" : "\/Volumes\/VOLUME\/*\/CommunicationTrust.framework\/CommunicationTrust",
    "name" : "CommunicationTrust",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5912494080,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SwiftUI.AVKit.Additions",
    "size" : 32768,
    "uuid" : "efa52227-f890-3d10-8685-7a70c82d165f",
    "path" : "\/Volumes\/VOLUME\/*\/_AVKit_SwiftUI.framework\/_AVKit_SwiftUI",
    "name" : "_AVKit_SwiftUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12937166848,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CallsPersistence",
    "size" : 49152,
    "uuid" : "7aefd000-7cd4-35cf-bd47-6ebca321b7f7",
    "path" : "\/Volumes\/VOLUME\/*\/CallsPersistence.framework\/CallsPersistence",
    "name" : "CallsPersistence",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13026263040,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PeopleSuggester",
    "size" : 1310720,
    "uuid" : "34fb7194-e6d4-3691-bd3f-57414af3a0b3",
    "path" : "\/Volumes\/VOLUME\/*\/PeopleSuggester.framework\/PeopleSuggester",
    "name" : "PeopleSuggester",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12939739136,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.findmy.framework.FindMyCommon",
    "size" : 98304,
    "uuid" : "a0dbfe74-7a90-35e8-bc02-4d7fff442cbe",
    "path" : "\/Volumes\/VOLUME\/*\/FindMyCommon.framework\/FindMyCommon",
    "name" : "FindMyCommon"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13017939968,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.findmy.framework.FindMyBase",
    "size" : 638976,
    "uuid" : "08c522f9-e835-3134-b6c6-553ce4c934d2",
    "path" : "\/Volumes\/VOLUME\/*\/FindMyBase.framework\/FindMyBase",
    "name" : "FindMyBase"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12939952128,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PersonaKit",
    "size" : 65536,
    "uuid" : "07024484-a302-302e-89db-718dc7578eff",
    "path" : "\/Volumes\/VOLUME\/*\/PersonaKit.framework\/PersonaKit",
    "name" : "PersonaKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13019037696,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Transparency",
    "size" : 425984,
    "uuid" : "38e5280d-ea83-31ba-8a99-f68a5fd0359d",
    "path" : "\/Volumes\/VOLUME\/*\/Transparency.framework\/Transparency",
    "name" : "Transparency"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12970033152,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreTransparency",
    "size" : 131072,
    "uuid" : "34eaa21f-34d5-309c-aa57-5974c29a9f19",
    "path" : "\/Volumes\/VOLUME\/*\/CoreTransparency.framework\/CoreTransparency",
    "name" : "CoreTransparency",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12972326912,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.IntentsUI",
    "size" : 131072,
    "uuid" : "5931f8c9-ccdc-30f4-b60e-6e8933f9be99",
    "path" : "\/Volumes\/VOLUME\/*\/IntentsUI.framework\/IntentsUI",
    "name" : "IntentsUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13024706560,
    "CFBundleShortVersionString" : "1.0.1",
    "CFBundleIdentifier" : "com.apple.coredav",
    "size" : 507904,
    "uuid" : "c341f5cb-6180-3a58-9857-5b3083fbf27b",
    "path" : "\/Volumes\/VOLUME\/*\/CoreDAV.framework\/CoreDAV",
    "name" : "CoreDAV",
    "CFBundleVersion" : "1236.4.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13023576064,
    "CFBundleShortVersionString" : "8.0",
    "CFBundleIdentifier" : "com.apple.CalDAV",
    "size" : 376832,
    "uuid" : "62825063-0cb9-3e25-88a4-616675d2fb29",
    "path" : "\/Volumes\/VOLUME\/*\/CalDAV.framework\/CalDAV",
    "name" : "CalDAV",
    "CFBundleVersion" : "1155.4.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13028966400,
    "CFBundleShortVersionString" : "2.0",
    "CFBundleIdentifier" : "com.apple.MIME",
    "size" : 327680,
    "uuid" : "9493f05e-9d0a-3b12-b4cf-b5d7e159998b",
    "path" : "\/Volumes\/VOLUME\/*\/MIME.framework\/MIME",
    "name" : "MIME",
    "CFBundleVersion" : "3864.600.51.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12991217664,
    "CFBundleShortVersionString" : "2.13",
    "CFBundleIdentifier" : "com.apple.Notes",
    "size" : 147456,
    "uuid" : "c0e8ce80-34be-3f0f-84e7-270184d3f5cd",
    "path" : "\/Volumes\/VOLUME\/*\/Notes.framework\/Notes",
    "name" : "Notes",
    "CFBundleVersion" : "2952.120.8"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12941918208,
    "CFBundleShortVersionString" : "11.0",
    "CFBundleIdentifier" : "com.apple.EmailAddressing",
    "size" : 49152,
    "uuid" : "9d31c389-d2a0-3cd6-b012-9e6fc95c6c19",
    "path" : "\/Volumes\/VOLUME\/*\/EmailAddressing.framework\/EmailAddressing",
    "name" : "EmailAddressing",
    "CFBundleVersion" : "3864.600.51.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13070041088,
    "CFBundleShortVersionString" : "11.0",
    "CFBundleIdentifier" : "com.apple.EmailCore",
    "size" : 540672,
    "uuid" : "c4212440-7dd8-3022-ab80-792f61b7da0a",
    "path" : "\/Volumes\/VOLUME\/*\/EmailCore.framework\/EmailCore",
    "name" : "EmailCore",
    "CFBundleVersion" : "3864.600.51.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13074120704,
    "CFBundleShortVersionString" : "11.0",
    "CFBundleIdentifier" : "com.apple.Email",
    "size" : 1343488,
    "uuid" : "999be00a-ce85-3912-bfb2-862985aadf10",
    "path" : "\/Volumes\/VOLUME\/*\/Email.framework\/Email",
    "name" : "Email",
    "CFBundleVersion" : "3864.600.51.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13077020672,
    "CFBundleShortVersionString" : "11.0",
    "CFBundleIdentifier" : "com.apple.EmailFoundation",
    "size" : 622592,
    "uuid" : "39c46db7-df1f-3dee-9d0c-dab933ad9253",
    "path" : "\/Volumes\/VOLUME\/*\/EmailFoundation.framework\/EmailFoundation",
    "name" : "EmailFoundation",
    "CFBundleVersion" : "3864.600.51.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5660606464,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MessageSupport",
    "size" : 16384,
    "uuid" : "bafa01bb-dd4f-3bdd-a085-49ff2de3fd59",
    "path" : "\/Volumes\/VOLUME\/*\/MessageSupport.framework\/MessageSupport",
    "name" : "MessageSupport",
    "CFBundleVersion" : "3864.600.51.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13071237120,
    "CFBundleShortVersionString" : "2.13",
    "CFBundleIdentifier" : "com.apple.NotesSupport",
    "size" : 507904,
    "uuid" : "41f28535-5b8f-3e4e-afe7-61ffc0933842",
    "path" : "\/Volumes\/VOLUME\/*\/NotesSupport.framework\/NotesSupport",
    "name" : "NotesSupport",
    "CFBundleVersion" : "2952.120.8"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13029687296,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Synapse",
    "size" : 344064,
    "uuid" : "1eaf4ea9-2547-316d-a741-30bb323f647f",
    "path" : "\/Volumes\/VOLUME\/*\/Synapse.framework\/Synapse",
    "name" : "Synapse",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13085163520,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Speech",
    "size" : 2048000,
    "uuid" : "1c7c2aa0-03c7-3874-98ea-4ba01a0c8245",
    "path" : "\/Volumes\/VOLUME\/*\/Speech.framework\/Speech",
    "name" : "Speech",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13002080256,
    "CFBundleShortVersionString" : "1.2",
    "CFBundleIdentifier" : "com.apple.AlgorithmsInternal",
    "size" : 409600,
    "uuid" : "ce2d35e4-2b5c-3b83-b799-b180b94d1846",
    "path" : "\/Volumes\/VOLUME\/*\/AlgorithmsInternal.framework\/AlgorithmsInternal",
    "name" : "AlgorithmsInternal",
    "CFBundleVersion" : "5026.5.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12969738240,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SpotlightReceiver",
    "size" : 81920,
    "uuid" : "7759263b-1b35-3ff5-b127-f742cd5386c4",
    "path" : "\/Volumes\/VOLUME\/*\/SpotlightReceiver.framework\/SpotlightReceiver",
    "name" : "SpotlightReceiver",
    "CFBundleVersion" : "2418.5.9.101"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12960825344,
    "CFBundleIdentifier" : "com.apple.ClarityFoundation",
    "size" : 49152,
    "uuid" : "1a41c4c6-185e-3f79-a45c-d931735e9f13",
    "path" : "\/Volumes\/VOLUME\/*\/ClarityFoundation.framework\/ClarityFoundation",
    "name" : "ClarityFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13013778432,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.accessibility.BrailleTranslation",
    "size" : 278528,
    "uuid" : "1caf1e85-c0cc-3ee8-b3b7-e6a892e5e367",
    "path" : "\/Volumes\/VOLUME\/*\/BrailleTranslation.framework\/BrailleTranslation",
    "name" : "BrailleTranslation",
    "CFBundleVersion" : "993"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13078478848,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AccessibilitySharedSupport",
    "size" : 786432,
    "uuid" : "9ed770ff-3376-381d-9fb8-7860489a8af8",
    "path" : "\/Volumes\/VOLUME\/*\/AccessibilitySharedSupport.framework\/AccessibilitySharedSupport",
    "name" : "AccessibilitySharedSupport",
    "CFBundleVersion" : "545.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13091913728,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.texttospeech",
    "size" : 2654208,
    "uuid" : "fc96ab3b-87e3-3f1a-ba92-21b9ce15fc57",
    "path" : "\/Volumes\/VOLUME\/*\/TextToSpeech.framework\/TextToSpeech",
    "name" : "TextToSpeech",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13095780352,
    "size" : 2785280,
    "uuid" : "1f53a9dc-d7b3-3614-8684-5902b3fcbb53",
    "path" : "\/Volumes\/VOLUME\/*\/libmecabra.dylib",
    "name" : "libmecabra.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6068715520,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ConstantClasses",
    "size" : 16384,
    "uuid" : "60ce0423-e7b4-3646-a945-6dfb11d6ea8c",
    "path" : "\/Volumes\/VOLUME\/*\/ConstantClasses.framework\/ConstantClasses",
    "name" : "ConstantClasses",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6251708416,
    "size" : 32768,
    "uuid" : "6f10ca30-1326-388d-8a00-677fb3fe1c96",
    "path" : "\/Volumes\/VOLUME\/*\/libChineseTokenizer.dylib",
    "name" : "libChineseTokenizer.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13080199168,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GenerativeFunctions.Sage",
    "size" : 737280,
    "uuid" : "856e7618-0cbb-390c-841d-60a9f8f9d036",
    "path" : "\/Volumes\/VOLUME\/*\/Sage.framework\/Sage",
    "name" : "Sage",
    "CFBundleVersion" : "222.43.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13099515904,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TextComposer",
    "size" : 1310720,
    "uuid" : "6cbf1113-c994-3bf4-95d8-10dd05d121e9",
    "path" : "\/Volumes\/VOLUME\/*\/TextComposer.framework\/TextComposer",
    "name" : "TextComposer",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13038059520,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.internal.SwiftSQLite",
    "size" : 294912,
    "uuid" : "96c5d5b1-81f4-36b3-8856-32b7b7eea692",
    "path" : "\/Volumes\/VOLUME\/*\/SwiftSQLite.framework\/SwiftSQLite",
    "name" : "SwiftSQLite"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6406225920,
    "CFBundleShortVersionString" : "26.5",
    "CFBundleIdentifier" : "com.apple.TipKitServices",
    "size" : 32768,
    "uuid" : "cbdbeb59-b6e3-38df-9e51-e37977420c7b",
    "path" : "\/Volumes\/VOLUME\/*\/TipKitServices.framework\/TipKitServices",
    "name" : "TipKitServices",
    "CFBundleVersion" : "120.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13101580288,
    "CFBundleShortVersionString" : "1.2",
    "CFBundleIdentifier" : "com.apple.LiftUI",
    "size" : 1245184,
    "uuid" : "ceabeb8a-8fd2-365d-8315-422c6f64527d",
    "path" : "\/Volumes\/VOLUME\/*\/LiftUI.framework\/LiftUI",
    "name" : "LiftUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13072384000,
    "CFBundleShortVersionString" : "224.4.3",
    "CFBundleIdentifier" : "com.apple.Settings",
    "size" : 622592,
    "uuid" : "7d16500f-8076-3af5-9586-e9c5818972f9",
    "path" : "\/Volumes\/VOLUME\/*\/Settings.framework\/Settings",
    "name" : "Settings",
    "CFBundleVersion" : "224.4.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13108903936,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.proactive.AppPredictionClient",
    "size" : 2277376,
    "uuid" : "06bd5000-cb7b-3292-aaad-959ef3b3ade3",
    "path" : "\/Volumes\/VOLUME\/*\/AppPredictionClient.framework\/AppPredictionClient",
    "name" : "AppPredictionClient",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12970344448,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CloudSettings",
    "size" : 65536,
    "uuid" : "e328aaa6-6e03-3806-be65-d75a4b00976c",
    "path" : "\/Volumes\/VOLUME\/*\/CloudSettings.framework\/CloudSettings",
    "name" : "CloudSettings",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13081493504,
    "CFBundleShortVersionString" : "14.0",
    "CFBundleIdentifier" : "com.apple.helpkit",
    "size" : 278528,
    "uuid" : "a0f82e3c-78a4-35de-a545-c88262d230ab",
    "path" : "\/Volumes\/VOLUME\/*\/HelpKit.framework\/HelpKit",
    "name" : "HelpKit",
    "CFBundleVersion" : "198.4.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13083541504,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Sleep",
    "size" : 573440,
    "uuid" : "85f5527e-ed86-3df0-85a9-8adeef9b2e23",
    "path" : "\/Volumes\/VOLUME\/*\/Sleep.framework\/Sleep",
    "name" : "Sleep",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13082165248,
    "CFBundleShortVersionString" : "1001",
    "CFBundleIdentifier" : "com.apple.ClipServices",
    "size" : 376832,
    "uuid" : "76cc0f53-79f9-39c1-b42c-2391be25c531",
    "path" : "\/Volumes\/VOLUME\/*\/ClipServices.framework\/ClipServices",
    "name" : "ClipServices",
    "CFBundleVersion" : "1036.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12970508288,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SpotlightFoundation",
    "size" : 65536,
    "uuid" : "6a5fe343-5a56-3963-b8e7-9674086d1135",
    "path" : "\/Volumes\/VOLUME\/*\/SpotlightFoundation.framework\/SpotlightFoundation",
    "name" : "SpotlightFoundation",
    "CFBundleVersion" : "2418.5.9.101"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12993298432,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ProactivePredictionClient",
    "size" : 180224,
    "uuid" : "1ddaeba0-b45f-34ec-b68d-4506fabb01d6",
    "path" : "\/Volumes\/VOLUME\/*\/ProactivePredictionClient.framework\/ProactivePredictionClient",
    "name" : "ProactivePredictionClient",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13103792128,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.proactive.ContextualSuggestionClient",
    "size" : 311296,
    "uuid" : "86addbd0-d1c1-3421-aacb-7f562dcca7e3",
    "path" : "\/Volumes\/VOLUME\/*\/ContextualSuggestionClient.framework\/ContextualSuggestionClient",
    "name" : "ContextualSuggestionClient",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13126434816,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.HealthKit",
    "size" : 6062080,
    "uuid" : "029f903b-7a04-3142-9341-a97cde182022",
    "path" : "\/Volumes\/VOLUME\/*\/HealthKit.framework\/HealthKit",
    "name" : "HealthKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13069369344,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.proactive.AppPredictionFoundation",
    "size" : 196608,
    "uuid" : "1b61dbad-ecd7-3b17-b32b-3fc7ecac96c3",
    "path" : "\/Volumes\/VOLUME\/*\/AppPredictionFoundation.framework\/AppPredictionFoundation",
    "name" : "AppPredictionFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12970672128,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.proactive.HeroDataClient",
    "size" : 49152,
    "uuid" : "92ebf7ed-816a-3a19-bde6-a366b90e6a7d",
    "path" : "\/Volumes\/VOLUME\/*\/HeroDataClient.framework\/HeroDataClient",
    "name" : "HeroDataClient",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13114015744,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.VoiceShortcutClient",
    "size" : 1671168,
    "uuid" : "dcb065b0-66d8-38e4-aa18-13dee1099b87",
    "path" : "\/Volumes\/VOLUME\/*\/VoiceShortcutClient.framework\/VoiceShortcutClient",
    "name" : "VoiceShortcutClient"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13105823744,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.proactive.ProactiveSuggestionClientModel",
    "size" : 622592,
    "uuid" : "0a671f01-a3d2-3721-9ea7-2c7b96666912",
    "path" : "\/Volumes\/VOLUME\/*\/ProactiveSuggestionClientModel.framework\/ProactiveSuggestionClientModel",
    "name" : "ProactiveSuggestionClientModel",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12970819584,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.UserNotificationsSettings",
    "size" : 65536,
    "uuid" : "6c73c40e-076a-33b2-8e3e-97e2b8d8ce46",
    "path" : "\/Volumes\/VOLUME\/*\/UserNotificationsSettings.framework\/UserNotificationsSettings",
    "name" : "UserNotificationsSettings",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13105020928,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.proactive.ProactiveContextClient",
    "size" : 245760,
    "uuid" : "9cb7ba98-151f-3d1a-9a56-cfde2410189a",
    "path" : "\/Volumes\/VOLUME\/*\/ProactiveContextClient.framework\/ProactiveContextClient",
    "name" : "ProactiveContextClient",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13073530880,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SleepHealth",
    "size" : 245760,
    "uuid" : "d588d9f7-6e79-3328-8c80-a260a845b90f",
    "path" : "\/Volumes\/VOLUME\/*\/SleepHealth.framework\/SleepHealth",
    "name" : "SleepHealth",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12972687360,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RegulatoryDomainFramework",
    "size" : 98304,
    "uuid" : "f8b9cce5-b6e2-3602-8a74-28c3ce8c3a45",
    "path" : "\/Volumes\/VOLUME\/*\/RegulatoryDomain.framework\/RegulatoryDomain",
    "name" : "RegulatoryDomain",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13117898752,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BusinessChatService",
    "size" : 638976,
    "uuid" : "51a73721-bc00-3d22-ac59-dd59fe8bc00c",
    "path" : "\/Volumes\/VOLUME\/*\/BusinessChatService.framework\/BusinessChatService",
    "name" : "BusinessChatService"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13038551040,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BusinessFoundation",
    "size" : 147456,
    "uuid" : "21ce62f5-5cb2-32db-a9ba-717a8c2aad04",
    "path" : "\/Volumes\/VOLUME\/*\/BusinessFoundation.framework\/BusinessFoundation",
    "name" : "BusinessFoundation"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13146914816,
    "CFBundleIdentifier" : "com.apple.ToolKit",
    "size" : 4341760,
    "uuid" : "4987104e-bfed-3753-b637-df0ac179a553",
    "path" : "\/Volumes\/VOLUME\/*\/ToolKit.framework\/ToolKit",
    "name" : "ToolKit"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13119291392,
    "CFBundleShortVersionString" : "26.0",
    "CFBundleIdentifier" : "com.apple.TipsUI",
    "size" : 835584,
    "uuid" : "35440796-0626-3946-91f9-efa55d471c32",
    "path" : "\/Volumes\/VOLUME\/*\/TipsUI.framework\/TipsUI",
    "name" : "TipsUI",
    "CFBundleVersion" : "822.5.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13122764800,
    "CFBundleShortVersionString" : "26.0",
    "CFBundleIdentifier" : "com.apple.TipsCore",
    "size" : 851968,
    "uuid" : "1a04cc34-bb0e-3674-b7f7-d17303516958",
    "path" : "\/Volumes\/VOLUME\/*\/TipsCore.framework\/TipsCore",
    "name" : "TipsCore",
    "CFBundleVersion" : "822.5.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13004963840,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.cryptokit.Chirp",
    "size" : 114688,
    "uuid" : "fdceda3c-1b95-3fa1-b975-92837cce98bb",
    "path" : "\/Volumes\/VOLUME\/*\/Chirp.framework\/Chirp",
    "name" : "Chirp",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13108002816,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RemoteManagement",
    "size" : 393216,
    "uuid" : "49959de1-c10d-3143-9c3c-d56051b53893",
    "path" : "\/Volumes\/VOLUME\/*\/RemoteManagement.framework\/RemoteManagement",
    "name" : "RemoteManagement",
    "CFBundleVersion" : "2.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13124616192,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RemoteManagementModel",
    "size" : 507904,
    "uuid" : "adb63d1d-ebc0-3fc6-96a6-3c967d1e637a",
    "path" : "\/Volumes\/VOLUME\/*\/RemoteManagementModel.framework\/RemoteManagementModel",
    "name" : "RemoteManagementModel",
    "CFBundleVersion" : "2.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13120929792,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RemoteManagementStore",
    "size" : 327680,
    "uuid" : "95223579-33dd-31a2-af08-65361803b247",
    "path" : "\/Volumes\/VOLUME\/*\/RemoteManagementStore.framework\/RemoteManagementStore",
    "name" : "RemoteManagementStore",
    "CFBundleVersion" : "2.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13002784768,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RemoteManagementProtocol",
    "size" : 49152,
    "uuid" : "5e22ca96-4308-3028-8af1-29b68329aa77",
    "path" : "\/Volumes\/VOLUME\/*\/RemoteManagementProtocol.framework\/RemoteManagementProtocol",
    "name" : "RemoteManagementProtocol",
    "CFBundleVersion" : "2.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13138952192,
    "CFBundleShortVersionString" : "26.5",
    "CFBundleIdentifier" : "com.apple.WebBookmarksSwift",
    "size" : 311296,
    "uuid" : "c12bc891-c746-3fab-8579-7dd2d1ecbec5",
    "path" : "\/Volumes\/VOLUME\/*\/WebBookmarksSwift.framework\/WebBookmarksSwift",
    "name" : "WebBookmarksSwift"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13155647488,
    "CFBundleShortVersionString" : "8624",
    "CFBundleIdentifier" : "com.apple.Safari.Shared",
    "size" : 2899968,
    "uuid" : "743deb6f-2fbf-37c6-b9f7-c7372953fa72",
    "path" : "\/Volumes\/VOLUME\/*\/SafariShared.framework\/SafariShared",
    "name" : "SafariShared",
    "CFBundleVersion" : "8624.2.5.10.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13161955328,
    "CFBundleShortVersionString" : "1",
    "CFBundleIdentifier" : "com.apple.GroupActivities",
    "size" : 1589248,
    "uuid" : "661e4804-df94-3e69-aec4-00feb7520617",
    "path" : "\/Volumes\/VOLUME\/*\/GroupActivities.framework\/GroupActivities",
    "name" : "GroupActivities",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13068861440,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.cloudkit.CloudKitCode",
    "size" : 180224,
    "uuid" : "7a93cd40-a914-379e-9f91-1c2e70b45d1f",
    "path" : "\/Volumes\/VOLUME\/*\/CloudKitCode.framework\/CloudKitCode",
    "name" : "CloudKitCode",
    "CFBundleVersion" : "2360.120.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13176160256,
    "CFBundleShortVersionString" : "1",
    "CFBundleIdentifier" : "com.apple.CopresenceCore",
    "size" : 2965504,
    "uuid" : "376a16c3-1248-33e2-90c1-f6cd1af8dc67",
    "path" : "\/Volumes\/VOLUME\/*\/CopresenceCore.framework\/CopresenceCore",
    "name" : "CopresenceCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13104398336,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.UsageTracking",
    "size" : 229376,
    "uuid" : "52800a7b-5ef7-39e3-a3e9-0e19c7c0aaf7",
    "path" : "\/Volumes\/VOLUME\/*\/UsageTracking.framework\/UsageTracking",
    "name" : "UsageTracking",
    "CFBundleVersion" : "392.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13142228992,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.ScreenTimeCore",
    "size" : 1097728,
    "uuid" : "2acb15e6-2799-3a94-b5b7-337d23a2f223",
    "path" : "\/Volumes\/VOLUME\/*\/ScreenTimeCore.framework\/ScreenTimeCore",
    "name" : "ScreenTimeCore",
    "CFBundleVersion" : "605.5.10"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13169934336,
    "CFBundleShortVersionString" : "1.4",
    "CFBundleIdentifier" : "com.apple.framework.calculate",
    "size" : 2244608,
    "uuid" : "9368cfa9-724f-3480-a95b-d7677565a27f",
    "path" : "\/Volumes\/VOLUME\/*\/Calculate.framework\/Calculate",
    "name" : "Calculate",
    "CFBundleVersion" : "17"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13144588288,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Catalyst",
    "size" : 507904,
    "uuid" : "d8b388b1-f1c6-35fd-8448-1c9d66cd9274",
    "path" : "\/Volumes\/VOLUME\/*\/Catalyst.framework\/Catalyst",
    "name" : "Catalyst",
    "CFBundleVersion" : "18.100.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13185302528,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ConfigurationEngineModel",
    "size" : 1064960,
    "uuid" : "933dd74e-8b90-3346-b210-608ef6f4edc7",
    "path" : "\/Volumes\/VOLUME\/*\/ConfigurationEngineModel.framework\/ConfigurationEngineModel",
    "name" : "ConfigurationEngineModel",
    "CFBundleVersion" : "249.100.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13139886080,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.DeviceActivity",
    "size" : 589824,
    "uuid" : "5a597be2-0b60-3a09-9dbc-31bdc62b0b7a",
    "path" : "\/Volumes\/VOLUME\/*\/DeviceActivity.framework\/DeviceActivity",
    "name" : "DeviceActivity",
    "CFBundleVersion" : "392.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13195984896,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.JetEngine",
    "size" : 5177344,
    "uuid" : "4d05c6e9-f517-3552-9755-40c5a7d2eb04",
    "path" : "\/Volumes\/VOLUME\/*\/JetEngine.framework\/JetEngine",
    "name" : "JetEngine",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13167149056,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.JetUI",
    "size" : 688128,
    "uuid" : "c3076db1-2d27-321b-8758-8a656a18b97c",
    "path" : "\/Volumes\/VOLUME\/*\/JetUI.framework\/JetUI",
    "name" : "JetUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13083017216,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.JetPack",
    "size" : 114688,
    "uuid" : "8d4b39d5-f90c-3b44-aa3f-ffd985f1d9d8",
    "path" : "\/Volumes\/VOLUME\/*\/JetPack.framework\/JetPack",
    "name" : "JetPack",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13168459776,
    "CFBundleIdentifier" : "com.apple.itunesstore",
    "size" : 540672,
    "uuid" : "02c0de54-906e-391b-9c33-db6abf5e1817",
    "path" : "\/Volumes\/VOLUME\/*\/iTunesStore.framework\/iTunesStore",
    "name" : "iTunesStore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13188366336,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.-JetEngine-SwiftUI",
    "size" : 1359872,
    "uuid" : "d20c4f8b-8697-3c79-a789-bf514015d599",
    "path" : "\/Volumes\/VOLUME\/*\/_JetEngine_SwiftUI.framework\/_JetEngine_SwiftUI",
    "name" : "_JetEngine_SwiftUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13172736000,
    "CFBundleShortVersionString" : "267.122.1",
    "CFBundleIdentifier" : "com.apple.ManagedSettings",
    "size" : 753664,
    "uuid" : "280cbb74-9c42-3aea-b5de-5df8db9c620a",
    "path" : "\/Volumes\/VOLUME\/*\/ManagedSettings.framework\/ManagedSettings",
    "name" : "ManagedSettings",
    "CFBundleVersion" : "267.122.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12972883968,
    "CFBundleShortVersionString" : "267.122.1",
    "CFBundleIdentifier" : "com.apple.ManagedSettingsSupport",
    "size" : 49152,
    "uuid" : "1e6a85bc-92b5-3cb6-8fef-278bf23b7460",
    "path" : "\/Volumes\/VOLUME\/*\/ManagedSettingsSupport.framework\/ManagedSettingsSupport",
    "name" : "ManagedSettingsSupport",
    "CFBundleVersion" : "267.122.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13121650688,
    "CFBundleShortVersionString" : "10",
    "CFBundleIdentifier" : "com.apple.ScreenReaderCore",
    "size" : 229376,
    "uuid" : "75757fca-ecf7-31c7-9c24-d1ae173f7d69",
    "path" : "\/Volumes\/VOLUME\/*\/ScreenReaderCore.framework\/ScreenReaderCore",
    "name" : "ScreenReaderCore",
    "CFBundleVersion" : "993"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13140803584,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.StocksKit",
    "size" : 360448,
    "uuid" : "b0403b7b-41bf-3fd9-98bd-0e2e647440cf",
    "path" : "\/Volumes\/VOLUME\/*\/StocksKit.framework\/StocksKit",
    "name" : "StocksKit",
    "CFBundleVersion" : "1968"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5668061184,
    "CFBundleShortVersionString" : "25",
    "CFBundleIdentifier" : "com.apple.OAuth",
    "size" : 16384,
    "uuid" : "44bf821f-3236-345c-abb4-4676c7bfb7c1",
    "path" : "\/Volumes\/VOLUME\/*\/OAuth.framework\/OAuth",
    "name" : "OAuth",
    "CFBundleVersion" : "25"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13203816448,
    "CFBundleShortVersionString" : "8.5",
    "CFBundleIdentifier" : "com.apple.StocksCore",
    "size" : 2686976,
    "uuid" : "bd44793e-a46c-36c1-a784-6bf70f1d4cc9",
    "path" : "\/Volumes\/VOLUME\/*\/StocksCore.framework\/StocksCore",
    "name" : "StocksCore",
    "CFBundleVersion" : "1968"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13208436736,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.TeaFoundation",
    "size" : 1572864,
    "uuid" : "b3531f36-ec56-3da0-9e75-d393ed96d844",
    "path" : "\/Volumes\/VOLUME\/*\/TeaFoundation.framework\/TeaFoundation",
    "name" : "TeaFoundation",
    "CFBundleVersion" : "1428"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13107249152,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.TeaSettings",
    "size" : 114688,
    "uuid" : "c00036a5-649d-3a9d-9956-59c692e41828",
    "path" : "\/Volumes\/VOLUME\/*\/TeaSettings.framework\/TeaSettings",
    "name" : "TeaSettings",
    "CFBundleVersion" : "1428"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13223346176,
    "CFBundleShortVersionString" : "11.5",
    "CFBundleIdentifier" : "com.apple.newscore",
    "size" : 5718016,
    "uuid" : "507b4fcc-916f-312d-8fdc-6eda636f6fcb",
    "path" : "\/Volumes\/VOLUME\/*\/NewsCore.framework\/NewsCore",
    "name" : "NewsCore",
    "CFBundleVersion" : "5883"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13145784320,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.TeaDB",
    "size" : 344064,
    "uuid" : "bea96df8-b164-3919-8b7a-7ac9d6341f20",
    "path" : "\/Volumes\/VOLUME\/*\/TeaDB.framework\/TeaDB",
    "name" : "TeaDB",
    "CFBundleVersion" : "1428"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13174013952,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.RemoteConfiguration",
    "size" : 294912,
    "uuid" : "d7edfe16-255a-3b4a-9035-ebb2920dfe9d",
    "path" : "\/Volumes\/VOLUME\/*\/RemoteConfiguration.framework\/RemoteConfiguration",
    "name" : "RemoteConfiguration",
    "CFBundleVersion" : "401"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13235617792,
    "CFBundleShortVersionString" : "11.5",
    "CFBundleIdentifier" : "com.apple.newstransport",
    "size" : 3440640,
    "uuid" : "7102fb87-768c-3d41-9057-9a8e25d5bd2b",
    "path" : "\/Volumes\/VOLUME\/*\/NewsTransport.framework\/NewsTransport",
    "name" : "NewsTransport",
    "CFBundleVersion" : "5883"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13025837056,
    "CFBundleShortVersionString" : "11.5",
    "CFBundleIdentifier" : "com.apple.newsfoundation",
    "size" : 65536,
    "uuid" : "e1ce8506-a02f-380a-bf7a-999a15e2992a",
    "path" : "\/Volumes\/VOLUME\/*\/NewsFoundation.framework\/NewsFoundation",
    "name" : "NewsFoundation",
    "CFBundleVersion" : "5883"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12955811840,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.NewsURLBucket",
    "size" : 32768,
    "uuid" : "d5cece3e-6cb1-3ed6-aa82-eb876c5989fa",
    "path" : "\/Volumes\/VOLUME\/*\/NewsURLBucket.framework\/NewsURLBucket",
    "name" : "NewsURLBucket",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13216808960,
    "CFBundleShortVersionString" : "161",
    "CFBundleIdentifier" : "com.apple.CoreHandwriting",
    "size" : 4423680,
    "uuid" : "d75b0cb3-d171-3109-9aa3-c9e770a112f5",
    "path" : "\/Volumes\/VOLUME\/*\/CoreHandwriting.framework\/CoreHandwriting",
    "name" : "CoreHandwriting",
    "CFBundleVersion" : "1.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5826494464,
    "size" : 16384,
    "uuid" : "885d54a1-11a0-3053-8e2b-5797b709e6a4",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftMetalKit.dylib",
    "name" : "libswiftMetalKit.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13190774784,
    "CFBundleShortVersionString" : "2.4",
    "CFBundleIdentifier" : "com.apple.ProofReader",
    "size" : 884736,
    "uuid" : "7f2d47f5-003f-3e81-80e6-1f59cc0f448d",
    "path" : "\/Volumes\/VOLUME\/*\/ProofReader.framework\/ProofReader",
    "name" : "ProofReader",
    "CFBundleVersion" : "595"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13261111296,
    "CFBundleShortVersionString" : "2.0",
    "CFBundleIdentifier" : "com.apple.Message",
    "size" : 12419072,
    "uuid" : "c0fe9384-8945-3069-b643-115c7a28c55d",
    "path" : "\/Volumes\/VOLUME\/*\/Message.framework\/Message",
    "name" : "Message",
    "CFBundleVersion" : "3864.600.51.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13122224128,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.VisionKit",
    "size" : 131072,
    "uuid" : "b097efd7-ea26-3d2a-b990-64ede5ebe1fb",
    "path" : "\/Volumes\/VOLUME\/*\/VisionKit.framework\/VisionKit",
    "name" : "VisionKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13309362176,
    "CFBundleShortVersionString" : "5.0",
    "CFBundleIdentifier" : "com.apple.chatkit",
    "size" : 14614528,
    "uuid" : "7e6dd1f4-4b89-319a-bded-e245287b8963",
    "path" : "\/Volumes\/VOLUME\/*\/ChatKit.framework\/ChatKit",
    "name" : "ChatKit",
    "CFBundleVersion" : "1450.600.61.2.7"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13174718464,
    "CFBundleShortVersionString" : "11.0",
    "CFBundleIdentifier" : "com.apple.MailSupport",
    "size" : 212992,
    "uuid" : "cfe97841-83b0-3698-bd30-e9615189622d",
    "path" : "\/Volumes\/VOLUME\/*\/MailSupport.framework\/MailSupport",
    "name" : "MailSupport",
    "CFBundleVersion" : "3864.600.51.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13249495040,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.EmailDaemon",
    "size" : 3653632,
    "uuid" : "3414cff8-4bbc-3eee-a5f4-82fad90527fd",
    "path" : "\/Volumes\/VOLUME\/*\/EmailDaemon.framework\/EmailDaemon",
    "name" : "EmailDaemon",
    "CFBundleVersion" : "3864.600.51.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13141475328,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SearchIntrospectionKit",
    "size" : 212992,
    "uuid" : "b0dd9f3c-d030-3e74-bfb8-6c90d3227058",
    "path" : "\/Volumes\/VOLUME\/*\/SearchIntrospectionKit.framework\/SearchIntrospectionKit",
    "name" : "SearchIntrospectionKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13192232960,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SettingsHost",
    "size" : 409600,
    "uuid" : "2d91281c-19af-346f-a60b-b2a9b27b8e40",
    "path" : "\/Volumes\/VOLUME\/*\/SettingsHost.framework\/SettingsHost",
    "name" : "SettingsHost",
    "CFBundleVersion" : "2.4.6"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13146439680,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MailKit",
    "size" : 163840,
    "uuid" : "c6804ab9-bddd-353d-a5d1-e7c655f8298b",
    "path" : "\/Volumes\/VOLUME\/*\/MailKit.framework\/MailKit",
    "name" : "MailKit",
    "CFBundleVersion" : "3864.600.51.2.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13211156480,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.DocumentCamera",
    "size" : 933888,
    "uuid" : "6e3f7327-d4d1-3e48-856a-32079a78c8e3",
    "path" : "\/Volumes\/VOLUME\/*\/DocumentCamera.framework\/DocumentCamera",
    "name" : "DocumentCamera",
    "CFBundleVersion" : "191.80.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13213138944,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.VisionKitCore",
    "size" : 1359872,
    "uuid" : "37df7dd2-315a-3d0f-8e0f-2a3712c95bb3",
    "path" : "\/Volumes\/VOLUME\/*\/VisionKitCore.framework\/VisionKitCore",
    "name" : "VisionKitCore",
    "CFBundleVersion" : "3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13193887744,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CameraEditKit",
    "size" : 425984,
    "uuid" : "749eab5f-e2c8-3c90-b9a0-c14408456fe2",
    "path" : "\/Volumes\/VOLUME\/*\/CameraEditKit.framework\/CameraEditKit",
    "name" : "CameraEditKit",
    "CFBundleVersion" : "4097.122.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13194870784,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PosterBoardServices",
    "size" : 442368,
    "uuid" : "6aeb8e9d-8b73-3ba3-87ab-f281d4b5cadf",
    "path" : "\/Volumes\/VOLUME\/*\/PosterBoardServices.framework\/PosterBoardServices",
    "name" : "PosterBoardServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13175308288,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PosterLegibilityKit",
    "size" : 180224,
    "uuid" : "e58d690c-73b8-3629-8fe2-f533c4653385",
    "path" : "\/Volumes\/VOLUME\/*\/PosterLegibilityKit.framework\/PosterLegibilityKit",
    "name" : "PosterLegibilityKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13192904704,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AddressBook",
    "size" : 180224,
    "uuid" : "6d0bba6b-9e52-3dfa-be70-39db508e26c2",
    "path" : "\/Volumes\/VOLUME\/*\/AddressBook.framework\/AddressBook",
    "name" : "AddressBook",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13246464000,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.siri.SiriActivation",
    "size" : 540672,
    "uuid" : "6c763095-cea6-3083-9137-4eb85450816a",
    "path" : "\/Volumes\/VOLUME\/*\/SiriActivation.framework\/SiriActivation",
    "name" : "SiriActivation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13126057984,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BubbleKit",
    "size" : 131072,
    "uuid" : "511fcb45-1ab7-337d-8722-f7225b97e8ef",
    "path" : "\/Volumes\/VOLUME\/*\/BubbleKit.framework\/BubbleKit",
    "name" : "BubbleKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13284524032,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SocialLayer",
    "size" : 966656,
    "uuid" : "ce155417-e085-3ae8-be6f-6d524455bded",
    "path" : "\/Volumes\/VOLUME\/*\/SocialLayer.framework\/SocialLayer",
    "name" : "SocialLayer",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13242646528,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SharedWithYou",
    "size" : 311296,
    "uuid" : "a8f40acb-658a-333f-a0a0-b3b92369dc07",
    "path" : "\/Volumes\/VOLUME\/*\/SharedWithYou.framework\/SharedWithYou",
    "name" : "SharedWithYou",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13243334656,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CloudSharingUI",
    "size" : 311296,
    "uuid" : "ae39d20f-d922-3508-a734-eaf2f6651b70",
    "path" : "\/Volumes\/VOLUME\/*\/CloudSharingUI.framework\/CloudSharingUI",
    "name" : "CloudSharingUI",
    "CFBundleVersion" : "215.4.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13256359936,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreSuggestionsUI",
    "size" : 540672,
    "uuid" : "cfe09fed-cf40-380a-b147-038852289159",
    "path" : "\/Volumes\/VOLUME\/*\/CoreSuggestionsUI.framework\/CoreSuggestionsUI",
    "name" : "CoreSuggestionsUI",
    "CFBundleVersion" : "1311.7"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13175767040,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CloudSharing",
    "size" : 196608,
    "uuid" : "ab7e1490-5618-3a0d-b5c8-855de2894e72",
    "path" : "\/Volumes\/VOLUME\/*\/CloudSharing.framework\/CloudSharing",
    "name" : "CloudSharing",
    "CFBundleVersion" : "215.4.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13257621504,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.VoiceMemos.framework",
    "size" : 458752,
    "uuid" : "b5ec3e0f-5882-3b02-93c6-364037d4f10d",
    "path" : "\/Volumes\/VOLUME\/*\/VoiceMemos.framework\/VoiceMemos",
    "name" : "VoiceMemos",
    "CFBundleVersion" : "1380"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13141950464,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MessagesSupport",
    "size" : 98304,
    "uuid" : "288e3278-115f-3286-9715-5c76e56c7faa",
    "path" : "\/Volumes\/VOLUME\/*\/MessagesSupport.framework\/MessagesSupport",
    "name" : "MessagesSupport",
    "CFBundleVersion" : "1450.600.61.2.7"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13388726272,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotosUICore",
    "size" : 25722880,
    "uuid" : "9d902ff2-88a4-3bca-87cc-c2fe0cb619f9",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosUICore.framework\/PhotosUICore",
    "name" : "PhotosUICore",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13287260160,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ResponseKit",
    "size" : 1064960,
    "uuid" : "856f51ca-9641-33be-9b0c-664ed98688ae",
    "path" : "\/Volumes\/VOLUME\/*\/ResponseKit.framework\/ResponseKit",
    "name" : "ResponseKit",
    "CFBundleVersion" : "186"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13024526336,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TranslationUIServices",
    "size" : 32768,
    "uuid" : "03e0bcba-c8f7-317b-a5a5-fae7538a98f0",
    "path" : "\/Volumes\/VOLUME\/*\/TranslationUIServices.framework\/TranslationUIServices",
    "name" : "TranslationUIServices",
    "CFBundleVersion" : "365.13"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13291831296,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.quicklook",
    "size" : 1228800,
    "uuid" : "687131d3-b876-3ad8-8680-25ba663d75fc",
    "path" : "\/Volumes\/VOLUME\/*\/QuickLook.framework\/QuickLook",
    "name" : "QuickLook",
    "CFBundleVersion" : "60000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13258653696,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CarPlay",
    "size" : 557056,
    "uuid" : "9c945715-dc3b-3a73-bb7e-ba5dbcd35076",
    "path" : "\/Volumes\/VOLUME\/*\/CarPlay.framework\/CarPlay",
    "name" : "CarPlay",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13169639424,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.EmojiKit",
    "size" : 98304,
    "uuid" : "05b5793d-a5be-34db-9d21-9e59a85c5661",
    "path" : "\/Volumes\/VOLUME\/*\/EmojiKit.framework\/EmojiKit",
    "name" : "EmojiKit",
    "CFBundleVersion" : "28"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13030506496,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.imtranscoding",
    "size" : 65536,
    "uuid" : "d45d5764-2987-3970-93a0-3ef852fccff7",
    "path" : "\/Volumes\/VOLUME\/*\/IMTranscoding.framework\/IMTranscoding",
    "name" : "IMTranscoding",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13083312128,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.messages.IMSharedUI",
    "size" : 98304,
    "uuid" : "d400393c-7d50-39eb-ad6c-c7bbca169497",
    "path" : "\/Volumes\/VOLUME\/*\/IMSharedUI.framework\/IMSharedUI",
    "name" : "IMSharedUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13084917760,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.StorageSettingsFramework",
    "size" : 65536,
    "uuid" : "8440903a-4692-387a-9c3f-b15da6ec843d",
    "path" : "\/Volumes\/VOLUME\/*\/StorageSettings.framework\/StorageSettings",
    "name" : "StorageSettings",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13357596672,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotosUIPrivate",
    "size" : 8454144,
    "uuid" : "bf827170-23c5-3873-96ca-3dfe35fb3fe6",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosUIPrivate.framework\/PhotosUIPrivate",
    "name" : "PhotosUIPrivate",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13300596736,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.imsharedutilities",
    "size" : 3899392,
    "uuid" : "4fb1e462-74ae-325e-9c61-eae04efcf72b",
    "path" : "\/Volumes\/VOLUME\/*\/IMSharedUtilities.framework\/IMSharedUtilities",
    "name" : "IMSharedUtilities",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13339049984,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.IMDPersistence",
    "size" : 3162112,
    "uuid" : "d9210c12-806f-3022-b73b-5f4976c29704",
    "path" : "\/Volumes\/VOLUME\/*\/IMDPersistence.framework\/IMDPersistence",
    "name" : "IMDPersistence",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13343686656,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.imcore",
    "size" : 3915776,
    "uuid" : "fc5e0a0d-49c4-3705-a754-29bae08e78bb",
    "path" : "\/Volumes\/VOLUME\/*\/IMCore.framework\/IMCore",
    "name" : "IMCore",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13289209856,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SafetyMonitor",
    "size" : 671744,
    "uuid" : "77f4f37c-f46a-3686-ad95-3223024c9d46",
    "path" : "\/Volumes\/VOLUME\/*\/SafetyMonitor.framework\/SafetyMonitor",
    "name" : "SafetyMonitor",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13349552128,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CommunicationDetails",
    "size" : 868352,
    "uuid" : "de31428a-bbda-3207-b0a9-649f983f17cd",
    "path" : "\/Volumes\/VOLUME\/*\/CommunicationDetails.framework\/CommunicationDetails",
    "name" : "CommunicationDetails",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13247692800,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotosPlayer",
    "size" : 294912,
    "uuid" : "38423bf1-9ae3-3b6e-b764-dbb842a404ce",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosPlayer.framework\/PhotosPlayer",
    "name" : "PhotosPlayer",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13296041984,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ImagePlayground",
    "size" : 819200,
    "uuid" : "2902442e-2582-3adc-8e0c-88b8cba5cf17",
    "path" : "\/Volumes\/VOLUME\/*\/ImagePlayground.framework\/ImagePlayground",
    "name" : "ImagePlayground",
    "CFBundleVersion" : "148.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13248462848,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotosUI",
    "size" : 294912,
    "uuid" : "58c7518c-f4c8-3a2a-b2ca-16ffb0f3e684",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosUI.framework\/PhotosUI",
    "name" : "PhotosUI",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13193347072,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SharedWithYouCore",
    "size" : 131072,
    "uuid" : "c74da4f1-5ce3-303d-887a-ca6d462dc6b5",
    "path" : "\/Volumes\/VOLUME\/*\/SharedWithYouCore.framework\/SharedWithYouCore",
    "name" : "SharedWithYouCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13005209600,
    "CFBundleShortVersionString" : "296",
    "CFBundleIdentifier" : "com.apple.LinkPresentation.-LinkPresentation-AppIntents",
    "size" : 32768,
    "uuid" : "c6e4de90-63f4-3519-aa6c-6741ee193944",
    "path" : "\/Volumes\/VOLUME\/*\/_LinkPresentation_AppIntents.framework\/_LinkPresentation_AppIntents",
    "name" : "_LinkPresentation_AppIntents",
    "CFBundleVersion" : "296.11"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13026033664,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.-QuickLook-SwiftUI",
    "size" : 32768,
    "uuid" : "b6608213-f0c9-33f0-9042-8951b708bccb",
    "path" : "\/Volumes\/VOLUME\/*\/_QuickLook_SwiftUI.framework\/_QuickLook_SwiftUI",
    "name" : "_QuickLook_SwiftUI",
    "CFBundleVersion" : "1016.206.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13381664768,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppleAccountUI",
    "size" : 3096576,
    "uuid" : "771a9d2b-d25f-3de7-a275-d08a641135bf",
    "path" : "\/Volumes\/VOLUME\/*\/AppleAccountUI.framework\/AppleAccountUI",
    "name" : "AppleAccountUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13107740672,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BusinessServicesUI",
    "size" : 81920,
    "uuid" : "e58931bd-21d3-385f-a8bb-320cb148ad3b",
    "path" : "\/Volumes\/VOLUME\/*\/BusinessServicesUI.framework\/BusinessServicesUI",
    "name" : "BusinessServicesUI"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13306953728,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Feedback",
    "size" : 1163264,
    "uuid" : "9fbf3b20-abb6-3bae-8bdd-0b6f4f82e403",
    "path" : "\/Volumes\/VOLUME\/*\/Feedback.framework\/Feedback",
    "name" : "Feedback",
    "CFBundleVersion" : "208.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13294452736,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.FeedbackService",
    "size" : 655360,
    "uuid" : "08d6b794-ea65-3975-bdc9-c0bef9e313d5",
    "path" : "\/Volumes\/VOLUME\/*\/FeedbackService.framework\/FeedbackService",
    "name" : "FeedbackService",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13448609792,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ImagePlaygroundInternal",
    "size" : 5570560,
    "uuid" : "88c3ba10-f5f9-38ad-bb35-9c5110f41d87",
    "path" : "\/Volumes\/VOLUME\/*\/ImagePlaygroundInternal.framework\/ImagePlaygroundInternal",
    "name" : "ImagePlaygroundInternal",
    "CFBundleVersion" : "148.5.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13290520576,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.proactive.ProactiveSummarizationClient",
    "size" : 475136,
    "uuid" : "81c9c30f-9c84-3678-ad16-318079944b97",
    "path" : "\/Volumes\/VOLUME\/*\/ProactiveSummarizationClient.framework\/ProactiveSummarizationClient",
    "name" : "ProactiveSummarizationClient",
    "CFBundleVersion" : "1311.7"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13298925568,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TextUnderstanding.TextUnderstanding",
    "size" : 753664,
    "uuid" : "c0a1f132-9100-35ad-aa5b-784af5b7a338",
    "path" : "\/Volumes\/VOLUME\/*\/TextUnderstanding.framework\/TextUnderstanding",
    "name" : "TextUnderstanding",
    "CFBundleVersion" : "122.21"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5830967296,
    "size" : 16384,
    "uuid" : "01f18406-b681-3bab-a505-8739abe608cf",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftCarPlay.dylib",
    "name" : "libswiftCarPlay.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13222461440,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PosterFuturesKit",
    "size" : 131072,
    "uuid" : "46605148-5b97-3bc4-821a-f1faa4323993",
    "path" : "\/Volumes\/VOLUME\/*\/PosterFuturesKit.framework\/PosterFuturesKit",
    "name" : "PosterFuturesKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13297778688,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PosterFoundation",
    "size" : 491520,
    "uuid" : "d3242790-f739-3f9b-bb93-e111dbcd7208",
    "path" : "\/Volumes\/VOLUME\/*\/PosterFoundation.framework\/PosterFoundation",
    "name" : "PosterFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13216464896,
    "CFBundleIdentifier" : "com.apple.LightSourceSupport",
    "size" : 98304,
    "uuid" : "dbdd93a7-4713-39fb-a1e0-bf0f46c49dd4",
    "path" : "\/Volumes\/VOLUME\/*\/LightSourceSupport.framework\/LightSourceSupport",
    "name" : "LightSourceSupport",
    "CFBundleVersion" : "7.1.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6404325376,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.corebrightness",
    "size" : 16384,
    "uuid" : "fd50e1fc-5fb8-3085-a209-c12af13fb097",
    "path" : "\/Volumes\/VOLUME\/*\/CoreBrightness.framework\/CoreBrightness",
    "name" : "CoreBrightness",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13260537856,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.DiagnosticExtensions",
    "size" : 147456,
    "uuid" : "b156dfcb-a721-392a-a2c1-22bbe1b8c7a2",
    "path" : "\/Volumes\/VOLUME\/*\/DiagnosticExtensions.framework\/DiagnosticExtensions",
    "name" : "DiagnosticExtensions",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13300219904,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.Accessory-Transport-Extension",
    "size" : 163840,
    "uuid" : "0a4c6cce-9026-3bd5-9bf5-13a8c0c07152",
    "path" : "\/Volumes\/VOLUME\/*\/AccessoryTransportExtension.framework\/AccessoryTransportExtension",
    "name" : "AccessoryTransportExtension",
    "CFBundleVersion" : "300.10"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13354598400,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AccessorySetupKit",
    "size" : 180224,
    "uuid" : "791ad8be-25cb-3767-b189-40001960d9d6",
    "path" : "\/Volumes\/VOLUME\/*\/AccessorySetupKit.framework\/AccessorySetupKit",
    "name" : "AccessorySetupKit",
    "CFBundleVersion" : "100.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13387153408,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.DeviceAccess",
    "size" : 475136,
    "uuid" : "77151949-0e4d-3c93-963a-2b3760a0169a",
    "path" : "\/Volumes\/VOLUME\/*\/DeviceAccess.framework\/DeviceAccess",
    "name" : "DeviceAccess",
    "CFBundleVersion" : "300.10"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13458374656,
    "CFBundleShortVersionString" : "2.0",
    "CFBundleIdentifier" : "com.apple.MessageProtection",
    "size" : 638976,
    "uuid" : "f64d4af9-2a19-32bc-a317-74a62e507127",
    "path" : "\/Volumes\/VOLUME\/*\/MessageProtection.framework\/MessageProtection",
    "name" : "MessageProtection",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13308985344,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AACCore",
    "size" : 114688,
    "uuid" : "71ffc101-c5b5-3500-9251-ec4b130cf2b3",
    "path" : "\/Volumes\/VOLUME\/*\/AACCore.framework\/AACCore",
    "name" : "AACCore",
    "CFBundleVersion" : "12.0.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13105643520,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotosMediaFoundation",
    "size" : 32768,
    "uuid" : "9f0577f6-eda6-31ec-a065-3eea48dc87a6",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosMediaFoundation.framework\/PhotosMediaFoundation",
    "name" : "PhotosMediaFoundation",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13377142784,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.HomeSharing",
    "size" : 196608,
    "uuid" : "6b3f8fac-9315-3336-9166-764cd3d64ebd",
    "path" : "\/Volumes\/VOLUME\/*\/HomeSharing.framework\/HomeSharing",
    "name" : "HomeSharing",
    "CFBundleVersion" : "4025.500.37"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13460226048,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.bulletinboard",
    "size" : 704512,
    "uuid" : "6f794d9b-4066-3b24-b3f0-8ad82a6fb572",
    "path" : "\/Volumes\/VOLUME\/*\/BulletinBoard.framework\/BulletinBoard",
    "name" : "BulletinBoard",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13464059904,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.corespeech.CoreSpeechFoundation",
    "size" : 1032192,
    "uuid" : "9432c9c6-ed44-3343-b0cc-2954ae8ded50",
    "path" : "\/Volumes\/VOLUME\/*\/CoreSpeechFoundation.framework\/CoreSpeechFoundation",
    "name" : "CoreSpeechFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13223002112,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.siri.SiriActivationFoundation",
    "size" : 98304,
    "uuid" : "ad7aa239-5d8c-31f1-8a50-857a39bd64d6",
    "path" : "\/Volumes\/VOLUME\/*\/SiriActivationFoundation.framework\/SiriActivationFoundation",
    "name" : "SiriActivationFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13379092480,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.siri.SiriObservation",
    "size" : 114688,
    "uuid" : "b039e548-6192-3710-8102-a008d4e8a6ca",
    "path" : "\/Volumes\/VOLUME\/*\/SiriObservation.framework\/SiriObservation",
    "name" : "SiriObservation"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13380468736,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.crossdevicearbitration.sirideviceselection",
    "size" : 180224,
    "uuid" : "32ad1550-6b3a-3f8e-9dd5-fd046c2d8fd8",
    "path" : "\/Volumes\/VOLUME\/*\/SiriDeviceSelection.framework\/SiriDeviceSelection",
    "name" : "SiriDeviceSelection"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13244366848,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.internal.UserAlerts",
    "size" : 49152,
    "uuid" : "41428400-482d-3647-bb36-f810b705f383",
    "path" : "\/Volumes\/VOLUME\/*\/UserAlerts.framework\/UserAlerts",
    "name" : "UserAlerts",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13482737664,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.siri.SiriNetwork",
    "size" : 966656,
    "uuid" : "b5eb2c7f-6afa-33fd-a718-7409d6cc744b",
    "path" : "\/Volumes\/VOLUME\/*\/SiriNetwork.framework\/SiriNetwork",
    "name" : "SiriNetwork",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13466353664,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.siri.SiriUtilities",
    "size" : 442368,
    "uuid" : "127636cd-eaf7-30c9-8c99-9b168308778e",
    "path" : "\/Volumes\/VOLUME\/*\/SiriUtilities.framework\/SiriUtilities",
    "name" : "SiriUtilities",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13461766144,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.crossdevicearbitration.coredeviceselection",
    "size" : 573440,
    "uuid" : "bade8507-21a4-30d9-ae69-516587eecb9e",
    "path" : "\/Volumes\/VOLUME\/*\/CoreDeviceSelection.framework\/CoreDeviceSelection",
    "name" : "CoreDeviceSelection"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13490323456,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.intelligenceflow.IntelligenceFlow",
    "size" : 2801664,
    "uuid" : "b4b5d6b3-e022-34a8-93bd-6628ab62e4e9",
    "path" : "\/Volumes\/VOLUME\/*\/IntelligenceFlow.framework\/IntelligenceFlow",
    "name" : "IntelligenceFlow",
    "CFBundleVersion" : "3525.11.14"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13462863872,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.intelligenceflow.IntelligenceFlowShared",
    "size" : 491520,
    "uuid" : "08ad6ab6-6b18-32d5-a042-b262533b4c05",
    "path" : "\/Volumes\/VOLUME\/*\/IntelligenceFlowShared.framework\/IntelligenceFlowShared",
    "name" : "IntelligenceFlowShared",
    "CFBundleVersion" : "3525.11.14"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13485867008,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.siri.SiriMessageTypes",
    "size" : 1392640,
    "uuid" : "1e29562f-ac56-3f7d-b383-0d1f14d72b83",
    "path" : "\/Volumes\/VOLUME\/*\/SiriMessageTypes.framework\/SiriMessageTypes",
    "name" : "SiriMessageTypes",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13500416000,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.siri.SnippetKit",
    "size" : 2818048,
    "uuid" : "10a6cd74-59d2-3e37-ab82-9c377c055f8b",
    "path" : "\/Volumes\/VOLUME\/*\/SnippetKit.framework\/SnippetKit",
    "name" : "SnippetKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13260898304,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.siri.SiriKitInvocation",
    "size" : 49152,
    "uuid" : "dbbb7d21-5ecc-3014-826c-d3334c508e28",
    "path" : "\/Volumes\/VOLUME\/*\/SiriKitInvocation.framework\/SiriKitInvocation",
    "name" : "SiriKitInvocation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13513932800,
    "CFBundleShortVersionString" : "3520.38.1",
    "CFBundleIdentifier" : "com.apple.siri.SiriNLUTypes",
    "size" : 4456448,
    "uuid" : "ce845c2a-2378-30cf-b760-c1ca1bea386d",
    "path" : "\/Volumes\/VOLUME\/*\/SiriNLUTypes.framework\/SiriNLUTypes",
    "name" : "SiriNLUTypes",
    "CFBundleVersion" : "3520.38.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13522796544,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.pommes.SiriInformationTypes",
    "size" : 573440,
    "uuid" : "6370c380-425b-3270-ab6d-e9470b7cdf2a",
    "path" : "\/Volumes\/VOLUME\/*\/SiriInformationTypes.framework\/SiriInformationTypes",
    "name" : "SiriInformationTypes",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13542506496,
    "CFBundleShortVersionString" : "3520.4.1",
    "CFBundleIdentifier" : "com.apple.siri.SiriOntology",
    "size" : 5144576,
    "uuid" : "e411bba0-4149-3753-be43-f90919f08de3",
    "path" : "\/Volumes\/VOLUME\/*\/SiriOntology.framework\/SiriOntology",
    "name" : "SiriOntology",
    "CFBundleVersion" : "3520.4.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13479641088,
    "CFBundleShortVersionString" : "3520.4.1",
    "CFBundleIdentifier" : "com.apple.siri.SiriOntologyProtobuf",
    "size" : 950272,
    "uuid" : "5b307638-0ee5-369d-8818-63153e429d54",
    "path" : "\/Volumes\/VOLUME\/*\/SiriOntologyProtobuf.framework\/SiriOntologyProtobuf",
    "name" : "SiriOntologyProtobuf",
    "CFBundleVersion" : "3520.4.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13481115648,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.proactive.PersonalizationPortrait",
    "size" : 557056,
    "uuid" : "be50e337-e026-39b0-9f95-e2d6b8d933df",
    "path" : "\/Volumes\/VOLUME\/*\/PersonalizationPortrait.framework\/PersonalizationPortrait",
    "name" : "PersonalizationPortrait",
    "CFBundleVersion" : "1311.7"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13291569152,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.proactive.PersonalIntelligenceCore",
    "size" : 98304,
    "uuid" : "923808c2-6355-3fb7-a4e1-ccb6732ea529",
    "path" : "\/Volumes\/VOLUME\/*\/PersonalIntelligenceCore.framework\/PersonalIntelligenceCore",
    "name" : "PersonalIntelligenceCore",
    "CFBundleVersion" : "1311.7"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13554450432,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.FinanceKit",
    "size" : 6963200,
    "uuid" : "1e649142-fea6-325b-aca2-0c3b288cb8aa",
    "path" : "\/Volumes\/VOLUME\/*\/FinanceKit.framework\/FinanceKit",
    "name" : "FinanceKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13069254656,
    "CFBundleIdentifier" : "com.apple.ReminderKitUI",
    "size" : 32768,
    "uuid" : "1847a93c-0b51-3bc1-87dc-d54a931d9fb3",
    "path" : "\/Volumes\/VOLUME\/*\/ReminderKitUI.framework\/ReminderKitUI",
    "name" : "ReminderKitUI",
    "CFBundleVersion" : "3976"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13505413120,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.reminderkit",
    "size" : 1851392,
    "uuid" : "11de9c24-b072-3f7d-a233-86aea2ae1017",
    "path" : "\/Volumes\/VOLUME\/*\/ReminderKit.framework\/ReminderKit",
    "name" : "ReminderKit",
    "CFBundleVersion" : "3976"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13108772864,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TextUnderstanding.TextUnderstandingFoundation",
    "size" : 49152,
    "uuid" : "67e89dda-0b6d-30ac-84b6-373743d94c5c",
    "path" : "\/Volumes\/VOLUME\/*\/TextUnderstandingFoundation.framework\/TextUnderstandingFoundation",
    "name" : "TextUnderstandingFoundation",
    "CFBundleVersion" : "122.21"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13295779840,
    "CFBundleShortVersionString" : "122.21",
    "CFBundleIdentifier" : "com.apple.DocumentUnderstandingClient",
    "size" : 81920,
    "uuid" : "53da4cbe-25d5-3794-9bb2-9d045c973783",
    "path" : "\/Volumes\/VOLUME\/*\/DocumentUnderstandingClient.framework\/DocumentUnderstandingClient",
    "name" : "DocumentUnderstandingClient",
    "CFBundleVersion" : "122.21"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13497663488,
    "CFBundleShortVersionString" : "2.0",
    "CFBundleIdentifier" : "com.apple.AppAnalytics",
    "size" : 1294336,
    "uuid" : "e3b73adf-a60d-3a91-a3a6-22218cd4e90e",
    "path" : "\/Volumes\/VOLUME\/*\/AppAnalytics.framework\/AppAnalytics",
    "name" : "AppAnalytics",
    "CFBundleVersion" : "534"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13379387392,
    "size" : 212992,
    "uuid" : "3ab80a44-e511-3292-9b5f-025847ba220a",
    "path" : "\/Volumes\/VOLUME\/*\/libtidy.A.dylib",
    "name" : "libtidy.A.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12940115968,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.UserSafety",
    "size" : 16384,
    "uuid" : "c08f1b50-9b66-3eff-91a7-c28495e25071",
    "path" : "\/Volumes\/VOLUME\/*\/UserSafety.framework\/UserSafety",
    "name" : "UserSafety",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13489012736,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Translation",
    "size" : 507904,
    "uuid" : "d299c2fe-55ed-371b-9c83-c0b41bd9b6d6",
    "path" : "\/Volumes\/VOLUME\/*\/Translation.framework\/Translation",
    "name" : "Translation",
    "CFBundleVersion" : "365.13"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13381271552,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BusinessServices",
    "size" : 196608,
    "uuid" : "273a9162-e252-3ce6-8e84-76c87a593b3a",
    "path" : "\/Volumes\/VOLUME\/*\/BusinessServices.framework\/BusinessServices",
    "name" : "BusinessServices"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13447004160,
    "CFBundleIdentifier" : "com.apple.CTLazuliSupport",
    "size" : 311296,
    "uuid" : "4096b3e1-93a5-3789-99d0-ede30becfafb",
    "path" : "\/Volumes\/VOLUME\/*\/CTLazuliSupport.framework\/CTLazuliSupport",
    "name" : "CTLazuliSupport",
    "CFBundleVersion" : "13187.6"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13447561216,
    "CFBundleIdentifier" : "com.apple.CTBlastDoorSupport",
    "size" : 212992,
    "uuid" : "3541896d-1479-3ae0-850b-37d272c74df1",
    "path" : "\/Volumes\/VOLUME\/*\/CTBlastDoorSupport.framework\/CTBlastDoorSupport",
    "name" : "CTBlastDoorSupport",
    "CFBundleVersion" : "13187.6"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13530775552,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SwiftMLS",
    "size" : 2834432,
    "uuid" : "f28a74df-ad9f-3433-a05e-6ff091f39390",
    "path" : "\/Volumes\/VOLUME\/*\/SwiftMLS.framework\/SwiftMLS",
    "name" : "SwiftMLS"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13534674944,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotosUIFoundation",
    "size" : 1343488,
    "uuid" : "02fb1365-5221-3928-a813-f05567382249",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosUIFoundation.framework\/PhotosUIFoundation",
    "name" : "PhotosUIFoundation",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13537853440,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Tungsten",
    "size" : 1376256,
    "uuid" : "de5a356b-fcd9-3220-a8ed-52bca337814a",
    "path" : "\/Volumes\/VOLUME\/*\/Tungsten.framework\/Tungsten",
    "name" : "Tungsten",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13511622656,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GridZero",
    "size" : 868352,
    "uuid" : "8cdf906f-d118-390b-958a-b5af7bc674e0",
    "path" : "\/Volumes\/VOLUME\/*\/GridZero.framework\/GridZero",
    "name" : "GridZero",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13195853824,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.-Photos-AppIntents",
    "size" : 32768,
    "uuid" : "43c25e29-9d78-3f3a-ba2d-c2b056705507",
    "path" : "\/Volumes\/VOLUME\/*\/_Photos_AppIntents.framework\/_Photos_AppIntents",
    "name" : "_Photos_AppIntents",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13380878336,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.-PhotosUI-SwiftUI",
    "size" : 147456,
    "uuid" : "d156f5e4-7a67-39da-9602-f25e1ee10d74",
    "path" : "\/Volumes\/VOLUME\/*\/_PhotosUI_SwiftUI.framework\/_PhotosUI_SwiftUI",
    "name" : "_PhotosUI_SwiftUI",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13447987200,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotosSpatialMedia",
    "size" : 196608,
    "uuid" : "1eaafb17-bca7-3f7a-a59c-98e2c6a71ed4",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosSpatialMedia.framework\/PhotosSpatialMedia",
    "name" : "PhotosSpatialMedia",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13468188672,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.photo.NeutrinoKit",
    "size" : 180224,
    "uuid" : "842fa3a6-28c1-335e-bbc4-6f905d6d1ffb",
    "path" : "\/Volumes\/VOLUME\/*\/NeutrinoKit.framework\/NeutrinoKit",
    "name" : "NeutrinoKit",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13509525504,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotosUIEdit",
    "size" : 606208,
    "uuid" : "9636239e-4c17-3753-a60c-b9bc2e2d56ea",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosUIEdit.framework\/PhotosUIEdit",
    "name" : "PhotosUIEdit",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13569130496,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.portrait.Portrait",
    "size" : 1097728,
    "uuid" : "e0e587fb-daa1-3a2f-9db6-3ced33b0b7ba",
    "path" : "\/Volumes\/VOLUME\/*\/Portrait.framework\/Portrait",
    "name" : "Portrait",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13577355264,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotosSwiftUICore",
    "size" : 2981888,
    "uuid" : "a3dc418f-dfd2-3a61-b2cf-7e7b6d1c4863",
    "path" : "\/Volumes\/VOLUME\/*\/PhotosSwiftUICore.framework\/PhotosSwiftUICore",
    "name" : "PhotosSwiftUICore",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13540982784,
    "CFBundleShortVersionString" : "87",
    "CFBundleIdentifier" : "com.apple.sociald.Social",
    "size" : 425984,
    "uuid" : "10d60711-6eaf-36bb-acbc-7a5a4a82d4f8",
    "path" : "\/Volumes\/VOLUME\/*\/Social.framework\/Social",
    "name" : "Social",
    "CFBundleVersion" : "87"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13496532992,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Cosmo",
    "size" : 557056,
    "uuid" : "ad344202-67d0-307a-ad14-205dc68b9085",
    "path" : "\/Volumes\/VOLUME\/*\/Cosmo.framework\/Cosmo",
    "name" : "Cosmo",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13388152832,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PreferencesExtended",
    "size" : 147456,
    "uuid" : "92c0a16c-a3c8-373b-be91-b5f4d3c2f0a1",
    "path" : "\/Volumes\/VOLUME\/*\/PreferencesExtended.framework\/PreferencesExtended",
    "name" : "PreferencesExtended",
    "CFBundleVersion" : "141.4.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13603651584,
    "CFBundleShortVersionString" : "16.0",
    "CFBundleIdentifier" : "com.apple.vfx",
    "size" : 15466496,
    "uuid" : "12c66fef-d503-3446-a7a8-af613a631987",
    "path" : "\/Volumes\/VOLUME\/*\/VFX.framework\/VFX",
    "name" : "VFX",
    "CFBundleVersion" : "203.100.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13591625728,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SceneKit",
    "size" : 4734976,
    "uuid" : "f36299e9-d73b-35d9-a604-ff34e05ea2a9",
    "path" : "\/Volumes\/VOLUME\/*\/SceneKit.framework\/SceneKit",
    "name" : "SceneKit",
    "CFBundleVersion" : "608.500"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13026148352,
    "CFBundleShortVersionString" : "8.0",
    "CFBundleIdentifier" : "com.apple.hsaauthenticationserver",
    "size" : 32768,
    "uuid" : "312b0407-5728-3f5a-b5ea-5b3ec190e780",
    "path" : "\/Volumes\/VOLUME\/*\/HSAAuthentication.framework\/HSAAuthentication",
    "name" : "HSAAuthentication",
    "CFBundleVersion" : "900"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13357252608,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.FlightUtilitiesCore",
    "size" : 114688,
    "uuid" : "fb8d842d-7966-3ae1-897c-ce1b8ad1b1d8",
    "path" : "\/Volumes\/VOLUME\/*\/FlightUtilitiesCore.framework\/FlightUtilitiesCore",
    "name" : "FlightUtilitiesCore",
    "CFBundleVersion" : "182"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13499744256,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.ScreenTimeUI",
    "size" : 245760,
    "uuid" : "edceb18f-c17f-32bb-b28b-d7ecc8003c3a",
    "path" : "\/Volumes\/VOLUME\/*\/ScreenTimeUI.framework\/ScreenTimeUI",
    "name" : "ScreenTimeUI",
    "CFBundleVersion" : "605.5.10"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13510950912,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.QuickLookUICore",
    "size" : 245760,
    "uuid" : "ebe52db3-76de-358d-805e-59e7d5d39889",
    "path" : "\/Volumes\/VOLUME\/*\/QuickLookUICore.framework\/QuickLookUICore",
    "name" : "QuickLookUICore",
    "CFBundleVersion" : "1016.206.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13495648256,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.quicklook.QuickLookSupport",
    "size" : 147456,
    "uuid" : "1a9da1b7-fd65-3adb-a0c4-a709d28ea05c",
    "path" : "\/Volumes\/VOLUME\/*\/QuickLookSupport.framework\/QuickLookSupport",
    "name" : "QuickLookSupport",
    "CFBundleVersion" : "208.6.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13575634944,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MarketplaceKit",
    "size" : 720896,
    "uuid" : "d38e91f7-3859-3936-953b-2897347c06f3",
    "path" : "\/Volumes\/VOLUME\/*\/MarketplaceKit.framework\/MarketplaceKit",
    "name" : "MarketplaceKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13584941056,
    "CFBundleShortVersionString" : "1.0.0",
    "CFBundleIdentifier" : "com.apple.UIAccessibility",
    "size" : 688128,
    "uuid" : "ad2ea310-4ba2-34c8-944d-64050793e99e",
    "path" : "\/Volumes\/VOLUME\/*\/UIAccessibility.framework\/UIAccessibility",
    "name" : "UIAccessibility",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13388464128,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.CoreSDB",
    "size" : 81920,
    "uuid" : "43ae95a1-8044-3632-93b0-603faf0bd24e",
    "path" : "\/Volumes\/VOLUME\/*\/CoreSDB.framework\/CoreSDB",
    "name" : "CoreSDB",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13216317440,
    "CFBundleShortVersionString" : "10.0",
    "CFBundleIdentifier" : "com.apple.idskvstore",
    "size" : 32768,
    "uuid" : "721875a0-3322-3031-a9a8-e4da96a1734d",
    "path" : "\/Volumes\/VOLUME\/*\/IDSKVStore.framework\/IDSKVStore",
    "name" : "IDSKVStore",
    "CFBundleVersion" : "1000"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13574258688,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AskToCore",
    "size" : 524288,
    "uuid" : "e6364b78-267d-3f98-a290-c9bb31476354",
    "path" : "\/Volumes\/VOLUME\/*\/AskToCore.framework\/AskToCore",
    "name" : "AskToCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13583351808,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreCDP",
    "size" : 393216,
    "uuid" : "b653c849-abe6-3fde-9fa1-364cbf6e149c",
    "path" : "\/Volumes\/VOLUME\/*\/CoreCDP.framework\/CoreCDP",
    "name" : "CoreCDP",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5331877888,
    "CFBundleShortVersionString" : "14.4.1",
    "CFBundleIdentifier" : "com.apple.DefaultAppsSettings",
    "size" : 16384,
    "uuid" : "6df82124-c4b3-3cdc-a359-c5a50869994b",
    "path" : "\/Volumes\/VOLUME\/*\/DefaultAppsSettings.framework\/DefaultAppsSettings",
    "name" : "DefaultAppsSettings",
    "CFBundleVersion" : "14.4.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13586530304,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ManagedAppDistribution",
    "size" : 507904,
    "uuid" : "b808e010-a4d7-386f-ad1d-34431af769fb",
    "path" : "\/Volumes\/VOLUME\/*\/ManagedAppDistribution.framework\/ManagedAppDistribution",
    "name" : "ManagedAppDistribution",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13588987904,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.accessibility.AccessibilityUIUtilities",
    "size" : 573440,
    "uuid" : "b6a4f723-8ed4-3a2e-b6f5-14e2c002ae6d",
    "path" : "\/Volumes\/VOLUME\/*\/AccessibilityUIUtilities.framework\/AccessibilityUIUtilities",
    "name" : "AccessibilityUIUtilities",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13601374208,
    "CFBundleShortVersionString" : "10",
    "CFBundleIdentifier" : "com.apple.ScreenReaderOutput",
    "size" : 671744,
    "uuid" : "8a640573-6459-35b5-879b-594bce72d74f",
    "path" : "\/Volumes\/VOLUME\/*\/ScreenReaderOutput.framework\/ScreenReaderOutput",
    "name" : "ScreenReaderOutput",
    "CFBundleVersion" : "993"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13587611648,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.accessibility.VoiceOverServices",
    "size" : 311296,
    "uuid" : "7cf35350-0d60-3724-be33-3f32f7c0b82d",
    "path" : "\/Volumes\/VOLUME\/*\/VoiceOverServices.framework\/VoiceOverServices",
    "name" : "VoiceOverServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13584236544,
    "CFBundleShortVersionString" : "2094.60.51",
    "CFBundleIdentifier" : "com.apple.ProxCardKit",
    "size" : 212992,
    "uuid" : "6174c3ca-1b08-3fcd-b2c0-d5274438b264",
    "path" : "\/Volumes\/VOLUME\/*\/ProxCardKit.framework\/ProxCardKit",
    "name" : "ProxCardKit",
    "CFBundleVersion" : "2094.60.51"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5333499904,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.accessibility.LiveTranscription",
    "size" : 16384,
    "uuid" : "0da00084-d6c3-3b55-b97e-3a5c95df041c",
    "path" : "\/Volumes\/VOLUME\/*\/LiveTranscription.framework\/LiveTranscription",
    "name" : "LiveTranscription",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13590380544,
    "CFBundleIdentifier" : "com.apple.ProductKit",
    "size" : 507904,
    "uuid" : "80f8e8fd-68d0-3dba-82fc-1c7e7cd986a2",
    "path" : "\/Volumes\/VOLUME\/*\/ProductKit.framework\/ProductKit",
    "name" : "ProductKit",
    "CFBundleVersion" : "2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13624508416,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PhotoLibrary",
    "size" : 393216,
    "uuid" : "8d6b79c8-efd2-3b9e-8e72-29a3aac83739",
    "path" : "\/Volumes\/VOLUME\/*\/PhotoLibrary.framework\/PhotoLibrary",
    "name" : "PhotoLibrary",
    "CFBundleVersion" : "852.0.102"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13625491456,
    "CFBundleIdentifier" : "com.apple.ProductKitCore",
    "size" : 786432,
    "uuid" : "341626c5-ad69-38d2-9c9b-9eecc33b8086",
    "path" : "\/Volumes\/VOLUME\/*\/ProductKitCore.framework\/ProductKitCore",
    "name" : "ProductKitCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13599916032,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CarPlayUIServices",
    "size" : 262144,
    "uuid" : "6fd058e9-ede5-3530-9f59-107c2ba56753",
    "path" : "\/Volumes\/VOLUME\/*\/CarPlayUIServices.framework\/CarPlayUIServices",
    "name" : "CarPlayUIServices",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13572341760,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.StorageDataFramework",
    "size" : 163840,
    "uuid" : "97e488ca-976d-306a-9a2d-c41a3a3d888f",
    "path" : "\/Volumes\/VOLUME\/*\/StorageData.framework\/StorageData",
    "name" : "StorageData",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13627801600,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.NanoLifestyle.Fitness",
    "size" : 425984,
    "uuid" : "140f7cdc-448f-35f0-a032-73bf9ed5325c",
    "path" : "\/Volumes\/VOLUME\/*\/Fitness.framework\/Fitness",
    "name" : "Fitness"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13629865984,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.HealthDaemonFoundation",
    "size" : 507904,
    "uuid" : "e9763eb5-dcfa-3731-b71d-013006755093",
    "path" : "\/Volumes\/VOLUME\/*\/HealthDaemonFoundation.framework\/HealthDaemonFoundation",
    "name" : "HealthDaemonFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13672153088,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.HealthDaemon",
    "size" : 10387456,
    "uuid" : "18950039-85dd-3598-803d-645e898b30ec",
    "path" : "\/Volumes\/VOLUME\/*\/HealthDaemon.framework\/HealthDaemon",
    "name" : "HealthDaemon",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13632225280,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.HealthOrchestration",
    "size" : 753664,
    "uuid" : "05793dbf-0de2-35cc-b645-99e6342cabe8",
    "path" : "\/Volumes\/VOLUME\/*\/HealthOrchestration.framework\/HealthOrchestration",
    "name" : "HealthOrchestration",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13571915776,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PairedSync",
    "size" : 114688,
    "uuid" : "4989e6c1-7216-3e8b-ada3-69a88d571475",
    "path" : "\/Volumes\/VOLUME\/*\/PairedSync.framework\/PairedSync",
    "name" : "PairedSync",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13441531904,
    "CFBundleIdentifier" : "com.apple.health.HealthKitOrchestrationAdditions",
    "size" : 49152,
    "uuid" : "672cb7d3-e2a4-326b-8d07-e8f7841290d1",
    "path" : "\/Volumes\/VOLUME\/*\/HealthKitOrchestrationAdditions.framework\/HealthKitOrchestrationAdditions",
    "name" : "HealthKitOrchestrationAdditions"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13630980096,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CommunicationsUICore",
    "size" : 589824,
    "uuid" : "d440a0bd-e1c7-3c46-8ae4-304c72c9136f",
    "path" : "\/Volumes\/VOLUME\/*\/CommunicationsUICore.framework\/CommunicationsUICore",
    "name" : "CommunicationsUICore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13634699264,
    "CFBundleIdentifier" : "com.apple.CallIntelligence",
    "size" : 688128,
    "uuid" : "80281115-b5ea-3899-b029-3e1ad4a3b1a7",
    "path" : "\/Volumes\/VOLUME\/*\/CallIntelligence.framework\/CallIntelligence",
    "name" : "CallIntelligence",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13463781376,
    "CFBundleIdentifier" : "com.apple.calls.FaceTimeFeatureControl",
    "size" : 49152,
    "uuid" : "968e021f-4953-381d-b5a8-f2fcf3ae76b4",
    "path" : "\/Volumes\/VOLUME\/*\/FaceTimeFeatureControl.framework\/FaceTimeFeatureControl",
    "name" : "FaceTimeFeatureControl"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13651034112,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.calls.FaceTimeMessageStore",
    "size" : 1310720,
    "uuid" : "aab29ee2-330a-39d0-98fa-3a593eaf15c9",
    "path" : "\/Volumes\/VOLUME\/*\/FaceTimeMessageStore.framework\/FaceTimeMessageStore",
    "name" : "FaceTimeMessageStore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13588463616,
    "CFBundleShortVersionString" : "36",
    "CFBundleIdentifier" : "com.apple.visualvoicemail",
    "size" : 163840,
    "uuid" : "3465ba8d-68fe-3bcc-9ce5-d7f7da5b3798",
    "path" : "\/Volumes\/VOLUME\/*\/VisualVoicemail.framework\/VisualVoicemail",
    "name" : "VisualVoicemail",
    "CFBundleVersion" : "1.0"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13602848768,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SpotlightResources",
    "size" : 245760,
    "uuid" : "6185be72-428f-3882-afb5-f6cac826a425",
    "path" : "\/Volumes\/VOLUME\/*\/SpotlightResources.framework\/SpotlightResources",
    "name" : "SpotlightResources",
    "CFBundleVersion" : "2418.5.9.101"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13626834944,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.DataDeliveryServices",
    "size" : 245760,
    "uuid" : "0e343d8d-6c3e-39d6-8cf9-1ec439283846",
    "path" : "\/Volumes\/VOLUME\/*\/DataDeliveryServices.framework\/DataDeliveryServices",
    "name" : "DataDeliveryServices",
    "CFBundleVersion" : "50"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13575208960,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.metadata.SpotlightLinguistics",
    "size" : 163840,
    "uuid" : "9587cea0-82c0-3e88-aaef-73bbb25f012d",
    "path" : "\/Volumes\/VOLUME\/*\/SpotlightLinguistics.framework\/SpotlightLinguistics",
    "name" : "SpotlightLinguistics",
    "CFBundleVersion" : "2418.5.9.101"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13653409792,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.avatarkit",
    "size" : 671744,
    "uuid" : "858e7fe7-2d39-3ebf-8914-5a6632e846e3",
    "path" : "\/Volumes\/VOLUME\/*\/AvatarKit.framework\/AvatarKit",
    "name" : "AvatarKit",
    "CFBundleVersion" : "356.500"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13628768256,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AvatarPersistence",
    "size" : 294912,
    "uuid" : "9dd25ed5-e70e-39cc-89bb-f299040e0179",
    "path" : "\/Volumes\/VOLUME\/*\/AvatarPersistence.framework\/AvatarPersistence",
    "name" : "AvatarPersistence",
    "CFBundleVersion" : "395.500.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13660733440,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.findmy.FindMyUICore",
    "size" : 2981888,
    "uuid" : "15927854-ee8d-3660-a4af-a363341aa67f",
    "path" : "\/Volumes\/VOLUME\/*\/FindMyUICore.framework\/FindMyUICore",
    "name" : "FindMyUICore",
    "CFBundleVersion" : "442.35.2.23.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13633519616,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.accountsui",
    "size" : 344064,
    "uuid" : "3502d572-f7df-3800-954d-d1e6ca30dc87",
    "path" : "\/Volumes\/VOLUME\/*\/AccountsUI.framework\/AccountsUI",
    "name" : "AccountsUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13657554944,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreCDPUI",
    "size" : 720896,
    "uuid" : "34f7b314-7599-3fed-ab3d-aa8eb03007a6",
    "path" : "\/Volumes\/VOLUME\/*\/CoreCDPUI.framework\/CoreCDPUI",
    "name" : "CoreCDPUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13655965696,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.messages.Messages",
    "size" : 327680,
    "uuid" : "6464fc3e-a5f3-3c49-b7ad-03b815980a50",
    "path" : "\/Volumes\/VOLUME\/*\/Messages.framework\/Messages",
    "name" : "Messages",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13659160576,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.findmy.FindMyCore",
    "size" : 540672,
    "uuid" : "e856a4fb-6393-392a-b23e-d2155a709056",
    "path" : "\/Volumes\/VOLUME\/*\/FindMyCore.framework\/FindMyCore",
    "name" : "FindMyCore",
    "CFBundleVersion" : "442.35.2.23.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13635944448,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.findmy.framework.FindMyMessaging",
    "size" : 425984,
    "uuid" : "691ba747-d2da-324f-9c8b-2de28a23e468",
    "path" : "\/Volumes\/VOLUME\/*\/FindMyMessaging.framework\/FindMyMessaging",
    "name" : "FindMyMessaging"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13468614656,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.icloud.FindMyDeviceUI",
    "size" : 49152,
    "uuid" : "731beba7-562d-3a44-b356-5e73715dec63",
    "path" : "\/Volumes\/VOLUME\/*\/FindMyDeviceUI.framework\/FindMyDeviceUI",
    "name" : "FindMyDeviceUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13634158592,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.icloud.FMCore",
    "size" : 163840,
    "uuid" : "e662ce91-eea5-3725-8481-520fba941c31",
    "path" : "\/Volumes\/VOLUME\/*\/FMCore.framework\/FMCore",
    "name" : "FMCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13667385344,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CoreCDPInternal",
    "size" : 868352,
    "uuid" : "3b1d607a-5b81-3220-ac9b-0d7865a5a0b0",
    "path" : "\/Volumes\/VOLUME\/*\/CoreCDPInternal.framework\/CoreCDPInternal",
    "name" : "CoreCDPInternal",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13669187584,
    "CFBundleShortVersionString" : "113",
    "CFBundleIdentifier" : "com.apple.accounts.AccountsDaemon",
    "size" : 688128,
    "uuid" : "8450bc1d-fe94-39ed-a5a7-168d3f7dc30a",
    "path" : "\/Volumes\/VOLUME\/*\/AccountsDaemon.framework\/AccountsDaemon",
    "name" : "AccountsDaemon",
    "CFBundleVersion" : "113"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13600620544,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CertInfo",
    "size" : 114688,
    "uuid" : "a5d62361-81d4-3066-ae67-fd6890490903",
    "path" : "\/Volumes\/VOLUME\/*\/CertInfo.framework\/CertInfo",
    "name" : "CertInfo",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13699432448,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MapsUI",
    "size" : 3162112,
    "uuid" : "b9afcfac-8e1b-3219-b19b-006dd211cbde",
    "path" : "\/Volumes\/VOLUME\/*\/MapsUI.framework\/MapsUI",
    "name" : "MapsUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13705691136,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MapsDesign",
    "size" : 1720320,
    "uuid" : "c940fbbf-79df-3ad2-bd5a-dd58ff217282",
    "path" : "\/Volumes\/VOLUME\/*\/MapsDesign.framework\/MapsDesign",
    "name" : "MapsDesign",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13693288448,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ap.AdPlatformsCommon",
    "size" : 1064960,
    "uuid" : "9f9da856-606a-34ac-90ba-1b253989059a",
    "path" : "\/Volumes\/VOLUME\/*\/AdPlatformsCommon.framework\/AdPlatformsCommon",
    "name" : "AdPlatformsCommon",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13709082624,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ap.PromotedContentUI",
    "size" : 1703936,
    "uuid" : "054f7e9e-fced-3177-a32d-41d139c7707e",
    "path" : "\/Volumes\/VOLUME\/*\/PromotedContentUI.framework\/PromotedContentUI",
    "name" : "PromotedContentUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13670531072,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ap.APFoundation",
    "size" : 753664,
    "uuid" : "feb7cebb-5e5d-3d56-ba93-288f38b09b4e",
    "path" : "\/Volumes\/VOLUME\/*\/APFoundation.framework\/APFoundation",
    "name" : "APFoundation",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13600931840,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ap.APConfigurationSystem",
    "size" : 147456,
    "uuid" : "07210335-b51e-338c-8145-bf938c9175a8",
    "path" : "\/Volumes\/VOLUME\/*\/APConfigurationSystem.framework\/APConfigurationSystem",
    "name" : "APConfigurationSystem",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13627408384,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ap.SearchAds",
    "size" : 147456,
    "uuid" : "5684c9a1-3131-3289-a2b9-c8f3bb0b4eeb",
    "path" : "\/Volumes\/VOLUME\/*\/SearchAds.framework\/SearchAds",
    "name" : "SearchAds",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6015582208,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ap.AdPlatformsCommonUI",
    "size" : 16384,
    "uuid" : "fdd122bf-a3c5-39a4-b1e9-b5f088066942",
    "path" : "\/Volumes\/VOLUME\/*\/AdPlatformsCommonUI.framework\/AdPlatformsCommonUI",
    "name" : "AdPlatformsCommonUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13249314816,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ap.PromotedContentSupport",
    "size" : 32768,
    "uuid" : "67719777-9c51-37c3-9dab-3a2b7a0b8a8d",
    "path" : "\/Volumes\/VOLUME\/*\/PromotedContentSupport.framework\/PromotedContentSupport",
    "name" : "PromotedContentSupport",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13695172608,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ap.PromotedContent",
    "size" : 1064960,
    "uuid" : "1b1c83df-e604-30fd-8d1e-875826cd170b",
    "path" : "\/Volumes\/VOLUME\/*\/PromotedContent.framework\/PromotedContent",
    "name" : "PromotedContent",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13482459136,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TransparencyDetailsView",
    "size" : 65536,
    "uuid" : "45447148-2abf-3691-b49e-34b68384ab29",
    "path" : "\/Volumes\/VOLUME\/*\/TransparencyDetailsView.framework\/TransparencyDetailsView",
    "name" : "TransparencyDetailsView",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13496320000,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ap.Proxy",
    "size" : 65536,
    "uuid" : "3dc04011-ad12-3ae5-a9fd-d88f0906f592",
    "path" : "\/Volumes\/VOLUME\/*\/PromotedContentProxy.framework\/PromotedContentProxy",
    "name" : "PromotedContentProxy",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13497450496,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AdAttributionKit",
    "size" : 81920,
    "uuid" : "774ee7e9-f8d0-3952-947b-caaeeb790d26",
    "path" : "\/Volumes\/VOLUME\/*\/AdAttributionKit.framework\/AdAttributionKit",
    "name" : "AdAttributionKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6066143232,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.-AdAttributionKit-StoreKit",
    "size" : 16384,
    "uuid" : "d3f57685-27f3-3e1e-9a0c-4dafd23a495c",
    "path" : "\/Volumes\/VOLUME\/*\/_AdAttributionKit_StoreKit.framework\/_AdAttributionKit_StoreKit",
    "name" : "_AdAttributionKit_StoreKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13656752128,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AdPlatforms.AdCore",
    "size" : 294912,
    "uuid" : "40002551-8783-3c8a-9172-f9fa15f98db9",
    "path" : "\/Volumes\/VOLUME\/*\/AdCore.framework\/AdCore",
    "name" : "AdCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13660192768,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ap.PromotedContentPrediction",
    "size" : 294912,
    "uuid" : "e02502b4-165a-3116-adff-012a2305f671",
    "path" : "\/Volumes\/VOLUME\/*\/PromotedContentPrediction.framework\/PromotedContentPrediction",
    "name" : "PromotedContentPrediction",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13463928832,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ap.LimitAdTracking",
    "size" : 32768,
    "uuid" : "735ef1bf-6af1-3e64-9fe4-5a54d43d8f23",
    "path" : "\/Volumes\/VOLUME\/*\/LimitAdTracking.framework\/LimitAdTracking",
    "name" : "LimitAdTracking",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13715013632,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.FeedbackCore",
    "size" : 1703936,
    "uuid" : "47a6f443-b47c-31d2-a480-49e5ce6007a0",
    "path" : "\/Volumes\/VOLUME\/*\/FeedbackCore.framework\/FeedbackCore",
    "name" : "FeedbackCore",
    "CFBundleVersion" : "208.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13696925696,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.DiagnosticExtensionsDaemon",
    "size" : 704512,
    "uuid" : "6d367a66-d82f-398c-9419-537d581733a9",
    "path" : "\/Volumes\/VOLUME\/*\/DiagnosticExtensionsDaemon.framework\/DiagnosticExtensionsDaemon",
    "name" : "DiagnosticExtensionsDaemon",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13567688704,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.EnhancedLoggingState",
    "size" : 81920,
    "uuid" : "bd1123d1-1d13-340c-85ad-aa6ace02ae37",
    "path" : "\/Volumes\/VOLUME\/*\/EnhancedLoggingState.framework\/EnhancedLoggingState",
    "name" : "EnhancedLoggingState",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13665583104,
    "CFBundleShortVersionString" : "179.600.1",
    "CFBundleIdentifier" : "com.apple.MultipeerConnectivity",
    "size" : 294912,
    "uuid" : "5f10c304-13ea-39d7-b863-b1ae91dc2217",
    "path" : "\/Volumes\/VOLUME\/*\/MultipeerConnectivity.framework\/MultipeerConnectivity",
    "name" : "MultipeerConnectivity",
    "CFBundleVersion" : "179.600.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13726728192,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.HomeKit",
    "size" : 4128768,
    "uuid" : "44769be4-de36-3b7f-949b-dcbeb3c7f5f8",
    "path" : "\/Volumes\/VOLUME\/*\/HomeKit.framework\/HomeKit",
    "name" : "HomeKit",
    "CFBundleVersion" : "1418.6.20"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13718339584,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.HomeKitClips",
    "size" : 1146880,
    "uuid" : "7feb9785-2103-30aa-8529-bfd9db60a3f0",
    "path" : "\/Volumes\/VOLUME\/*\/HomeKitClips.framework\/HomeKitClips",
    "name" : "HomeKitClips",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13629489152,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AirPlayRoutePrediction",
    "size" : 131072,
    "uuid" : "8f409466-7ad1-360e-801f-abef8e4809a6",
    "path" : "\/Volumes\/VOLUME\/*\/AirPlayRoutePrediction.framework\/AirPlayRoutePrediction",
    "name" : "AirPlayRoutePrediction",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13713260544,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.HMFoundation",
    "size" : 720896,
    "uuid" : "2f6e3ce6-c237-32d4-935d-a5dd44a03607",
    "path" : "\/Volumes\/VOLUME\/*\/HMFoundation.framework\/HMFoundation",
    "name" : "HMFoundation",
    "CFBundleVersion" : "1418.6.20"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13636976640,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.HomeKitEventRouter",
    "size" : 147456,
    "uuid" : "945653c8-1ec5-32b2-aeaf-d238b06e4a92",
    "path" : "\/Volumes\/VOLUME\/*\/HomeKitEventRouter.framework\/HomeKitEventRouter",
    "name" : "HomeKitEventRouter",
    "CFBundleVersion" : "1.2.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 5358387200,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.home.HomeKitFeatures",
    "size" : 16384,
    "uuid" : "568e4a92-6e62-347a-bfd4-81f849186e71",
    "path" : "\/Volumes\/VOLUME\/*\/HomeKitFeatures.framework\/HomeKitFeatures",
    "name" : "HomeKitFeatures",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13749223424,
    "CFBundleShortVersionString" : "1.4.0.74",
    "CFBundleIdentifier" : "com.apple.matter",
    "size" : 10207232,
    "uuid" : "497f5254-a37f-3822-a097-2c6d1bcd6f0d",
    "path" : "\/Volumes\/VOLUME\/*\/Matter.framework\/Matter",
    "name" : "Matter",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13666779136,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.TouchRemote",
    "size" : 245760,
    "uuid" : "708817de-2fce-3dc0-8105-316938189bff",
    "path" : "\/Volumes\/VOLUME\/*\/TouchRemote.framework\/TouchRemote",
    "name" : "TouchRemote",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13513719808,
    "size" : 81920,
    "uuid" : "af01eaa9-e04d-396d-9457-243b6b6877a8",
    "path" : "\/Volumes\/VOLUME\/*\/libdns_services.dylib",
    "name" : "libdns_services.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13720043520,
    "CFBundleShortVersionString" : "2.0",
    "CFBundleIdentifier" : "com.apple.AirPlaySupport",
    "size" : 704512,
    "uuid" : "cdae010d-b3ec-3cc6-9c9f-00f78d93b08f",
    "path" : "\/Volumes\/VOLUME\/*\/AirPlaySupport.framework\/AirPlaySupport",
    "name" : "AirPlaySupport",
    "CFBundleVersion" : "950.7.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13122666496,
    "CFBundleShortVersionString" : "5.0",
    "CFBundleIdentifier" : "com.apple.AppleSRP",
    "size" : 32768,
    "uuid" : "058e89c6-20a1-3cfe-a2b1-5dc823663a95",
    "path" : "\/Volumes\/VOLUME\/*\/AppleSRP.framework\/AppleSRP",
    "name" : "AppleSRP",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13591298048,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.InputToolKit",
    "size" : 81920,
    "uuid" : "87fc7341-1492-3929-8704-a5f5c963096a",
    "path" : "\/Volumes\/VOLUME\/*\/InputToolKit.framework\/InputToolKit",
    "name" : "InputToolKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13735149568,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AccessibilitySharedUISupport",
    "size" : 1523712,
    "uuid" : "5ae76fd9-2e40-399c-bf5f-de61b9a1fc68",
    "path" : "\/Volumes\/VOLUME\/*\/AccessibilitySharedUISupport.framework\/AccessibilitySharedUISupport",
    "name" : "AccessibilitySharedUISupport",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13666172928,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GenerativeFunctions.GenerativePartnerService",
    "size" : 147456,
    "uuid" : "c03e4ebd-6ee4-3056-aad6-29171777c860",
    "path" : "\/Volumes\/VOLUME\/*\/GenerativePartnerService.framework\/GenerativePartnerService",
    "name" : "GenerativePartnerService",
    "CFBundleVersion" : "222.43.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13711704064,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.GenerativeFunctions.GenerativePartnerServiceUI",
    "size" : 327680,
    "uuid" : "4eeaddd7-1fe4-3d90-bf7e-8834ea2dfe03",
    "path" : "\/Volumes\/VOLUME\/*\/GenerativePartnerServiceUI.framework\/GenerativePartnerServiceUI",
    "name" : "GenerativePartnerServiceUI",
    "CFBundleVersion" : "222.43.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13468762112,
    "size" : 32768,
    "uuid" : "5525197a-a33a-3dfc-9b8e-7a988cb52e65",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftARKit.dylib",
    "name" : "libswiftARKit.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13763330048,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Charts",
    "size" : 5308416,
    "uuid" : "c716b837-9415-3c69-a302-a4d12be818c1",
    "path" : "\/Volumes\/VOLUME\/*\/Charts.framework\/Charts",
    "name" : "Charts",
    "CFBundleVersion" : "4.4.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13722533888,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RealityKit",
    "size" : 409600,
    "uuid" : "d6c790ed-6fd6-3c96-9012-e0538d791059",
    "path" : "\/Volumes\/VOLUME\/*\/RealityKit.framework\/RealityKit",
    "name" : "RealityKit",
    "CFBundleVersion" : "403.120.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13741850624,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.RealityIO",
    "size" : 1081344,
    "uuid" : "090acefa-396b-3509-9060-753944f66cf7",
    "path" : "\/Volumes\/VOLUME\/*\/RealityIO.framework\/RealityIO",
    "name" : "RealityIO",
    "CFBundleVersion" : "221.100.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13712277504,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.ARKit",
    "size" : 376832,
    "uuid" : "07e5beeb-ee93-3521-923a-40d3e31007c6",
    "path" : "\/Volumes\/VOLUME\/*\/ARKit.framework\/ARKit",
    "name" : "ARKit",
    "CFBundleVersion" : "746.100.4"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13738098688,
    "CFBundleIdentifier" : "com.apple.SpriteKit",
    "size" : 1114112,
    "uuid" : "b915d8d3-2ccd-38b7-8dcb-18cc53ca953b",
    "path" : "\/Volumes\/VOLUME\/*\/SpriteKit.framework\/SpriteKit",
    "name" : "SpriteKit",
    "CFBundleVersion" : "52.4.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13666451456,
    "CFBundleShortVersionString" : "1.3",
    "CFBundleIdentifier" : "com.apple.audio.OpenAL",
    "size" : 163840,
    "uuid" : "8a55096f-4d2a-3977-967d-b52aff9863ac",
    "path" : "\/Volumes\/VOLUME\/*\/OpenAL.framework\/OpenAL",
    "name" : "OpenAL",
    "CFBundleVersion" : "1.3"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13671841792,
    "CFBundleIdentifier" : "com.apple.Jet",
    "size" : 114688,
    "uuid" : "66b8f4c6-35e1-3981-a83b-4695b3c439c2",
    "path" : "\/Volumes\/VOLUME\/*\/Jet.framework\/Jet",
    "name" : "Jet",
    "CFBundleVersion" : "13.4.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13774061568,
    "CFBundleShortVersionString" : "820.5.18",
    "CFBundleIdentifier" : "com.apple.GameCenterFoundation",
    "size" : 1998848,
    "uuid" : "6e6a2230-faec-3e08-8e97-d898b23f5e95",
    "path" : "\/Volumes\/VOLUME\/*\/GameCenterFoundation.framework\/GameCenterFoundation",
    "name" : "GameCenterFoundation",
    "CFBundleVersion" : "820.5.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13721239552,
    "CFBundleShortVersionString" : "820.5.18",
    "CFBundleIdentifier" : "com.apple.GameCenterUICore",
    "size" : 294912,
    "uuid" : "1ee61b9c-3e10-34c9-a5f6-7227c4b34f8c",
    "path" : "\/Volumes\/VOLUME\/*\/GameCenterUICore.framework\/GameCenterUICore",
    "name" : "GameCenterUICore",
    "CFBundleVersion" : "820.5.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13789511680,
    "CFBundleShortVersionString" : "820.5.18",
    "CFBundleIdentifier" : "com.apple.GameCenterUI",
    "size" : 5701632,
    "uuid" : "97c11720-e518-3367-b643-057f424457ed",
    "path" : "\/Volumes\/VOLUME\/*\/GameCenterUI.framework\/GameCenterUI",
    "name" : "GameCenterUI",
    "CFBundleVersion" : "820.5.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13723844608,
    "CFBundleIdentifier" : "com.apple.GameplayKit",
    "size" : 458752,
    "uuid" : "8a392e22-fe31-3316-87aa-5284013860ab",
    "path" : "\/Volumes\/VOLUME\/*\/GameplayKit.framework\/GameplayKit",
    "name" : "GameplayKit",
    "CFBundleVersion" : "101.4.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6381666304,
    "CFBundleShortVersionString" : "820.5.18",
    "CFBundleIdentifier" : "com.apple.LegacyGameKit",
    "size" : 16384,
    "uuid" : "bb2f7135-97df-3393-ab2b-8ea91ccc4c22",
    "path" : "\/Volumes\/VOLUME\/*\/LegacyGameKit.framework\/LegacyGameKit",
    "name" : "LegacyGameKit",
    "CFBundleVersion" : "820.5.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13769834496,
    "CFBundleIdentifier" : "com.apple.GameServices",
    "size" : 1261568,
    "uuid" : "8515845f-78bb-3926-a016-4f9ff9fe1f01",
    "path" : "\/Volumes\/VOLUME\/*\/GameServices.framework\/GameServices",
    "name" : "GameServices",
    "CFBundleVersion" : "820.5.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13782171648,
    "CFBundleIdentifier" : "com.apple.GameServicesCore",
    "size" : 2129920,
    "uuid" : "4eee89d6-ab06-3cb5-b178-56f90e8f1ab7",
    "path" : "\/Volumes\/VOLUME\/*\/GameServicesCore.framework\/GameServicesCore",
    "name" : "GameServicesCore",
    "CFBundleVersion" : "820.5.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13740212224,
    "CFBundleShortVersionString" : "3.0",
    "CFBundleIdentifier" : "com.apple.GameKitServices",
    "size" : 671744,
    "uuid" : "c6f4a208-aa85-31b7-8474-9d6acb50b300",
    "path" : "\/Volumes\/VOLUME\/*\/GameKitServices.framework\/GameKitServices",
    "name" : "GameKitServices",
    "CFBundleVersion" : "2205.3.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13745651712,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.facetime.-GroupActivities-UIKit",
    "size" : 425984,
    "uuid" : "27d27d5d-da6b-3e22-8f2a-444222a2b3c7",
    "path" : "\/Volumes\/VOLUME\/*\/_GroupActivities_UIKit.framework\/_GroupActivities_UIKit",
    "name" : "_GroupActivities_UIKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13636632576,
    "CFBundleIdentifier" : "com.apple.GameCenterOverlayService",
    "size" : 98304,
    "uuid" : "17712d3e-1958-37b5-bcb7-edd962d69d27",
    "path" : "\/Volumes\/VOLUME\/*\/GameCenterOverlayService.framework\/GameCenterOverlayService",
    "name" : "GameCenterOverlayService"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13747372032,
    "CFBundleIdentifier" : "com.apple.GameCenterServerClient",
    "size" : 753664,
    "uuid" : "b5cc664e-e0c2-3e2b-8d13-4fad15329e10",
    "path" : "\/Volumes\/VOLUME\/*\/GameCenterServerClient.framework\/GameCenterServerClient",
    "name" : "GameCenterServerClient",
    "CFBundleVersion" : "820.5.18"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13577158656,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.HTTPTypesInternal",
    "size" : 49152,
    "uuid" : "70df5137-b095-3d9f-bf21-3cde17718204",
    "path" : "\/Volumes\/VOLUME\/*\/HTTPTypesInternal.framework\/HTTPTypesInternal",
    "name" : "HTTPTypesInternal",
    "CFBundleVersion" : "5812.122.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13724696576,
    "CFBundleShortVersionString" : "1.8.3",
    "CFBundleIdentifier" : "com.apple.OpenAPIRuntimeInternal",
    "size" : 622592,
    "uuid" : "e628d24c-6a7c-3b55-a46f-89138f7608fe",
    "path" : "\/Volumes\/VOLUME\/*\/OpenAPIRuntimeInternal.framework\/OpenAPIRuntimeInternal",
    "name" : "OpenAPIRuntimeInternal",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 6442041344,
    "size" : 16384,
    "uuid" : "3119af59-1eaa-3731-a7cb-c21c556b63c0",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftDataDetection.dylib",
    "name" : "libswiftDataDetection.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4944216064,
    "size" : 16384,
    "uuid" : "8c7e08c0-69a9-3be9-8f41-60c74fba8e5c",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftFileProvider.dylib",
    "name" : "libswiftFileProvider.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13837828096,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PassKitUI",
    "size" : 19070976,
    "uuid" : "5bef9f3d-6f58-3d69-b9a7-90439568baf2",
    "path" : "\/Volumes\/VOLUME\/*\/PassKitUI.framework\/PassKitUI",
    "name" : "PassKitUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13725745152,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.BridgePreferences",
    "size" : 360448,
    "uuid" : "486c4324-cb25-3379-8b39-1823529545a4",
    "path" : "\/Volumes\/VOLUME\/*\/BridgePreferences.framework\/BridgePreferences",
    "name" : "BridgePreferences",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13806125056,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AppleMediaServicesUI",
    "size" : 2506752,
    "uuid" : "26e79d8e-effb-33d5-8f22-045b7a4e04ce",
    "path" : "\/Volumes\/VOLUME\/*\/AppleMediaServicesUI.framework\/AppleMediaServicesUI",
    "name" : "AppleMediaServicesUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13698842624,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PaymentUIBase",
    "size" : 212992,
    "uuid" : "c9008a86-51ca-3c1d-ab11-a9ead6c9ca08",
    "path" : "\/Volumes\/VOLUME\/*\/PaymentUIBase.framework\/PaymentUIBase",
    "name" : "PaymentUIBase",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13698400256,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.CarPlaySetup",
    "size" : 81920,
    "uuid" : "ea9003c1-6d80-3301-80b5-e576efc91831",
    "path" : "\/Volumes\/VOLUME\/*\/CarPlaySetup.framework\/CarPlaySetup",
    "name" : "CarPlaySetup",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13741326336,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.SetupAssistantUI",
    "size" : 229376,
    "uuid" : "d1b56623-5916-3fd2-9870-7c7a7f4569ff",
    "path" : "\/Volumes\/VOLUME\/*\/SetupAssistantUI.framework\/SetupAssistantUI",
    "name" : "SetupAssistantUI",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13772980224,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PlatterKit",
    "size" : 278528,
    "uuid" : "36cf5395-88fa-3d80-8016-aec0c501e57f",
    "path" : "\/Volumes\/VOLUME\/*\/PlatterKit.framework\/PlatterKit",
    "name" : "PlatterKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13819838464,
    "CFBundleShortVersionString" : "6.0",
    "CFBundleIdentifier" : "com.apple.weatherui",
    "size" : 5226496,
    "uuid" : "c8060ef9-44f5-34c3-b0e2-bd3c4b5a34ec",
    "path" : "\/Volumes\/VOLUME\/*\/WeatherUI.framework\/WeatherUI",
    "name" : "WeatherUI",
    "CFBundleVersion" : "1318"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13772292096,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PassKitUIFoundation",
    "size" : 163840,
    "uuid" : "c4d315e9-a488-310d-9fa3-75fda9819a2c",
    "path" : "\/Volumes\/VOLUME\/*\/PassKitUIFoundation.framework\/PassKitUIFoundation",
    "name" : "PassKitUIFoundation"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13786152960,
    "CFBundleShortVersionString" : "6.0",
    "CFBundleIdentifier" : "com.apple.weatherkit",
    "size" : 1540096,
    "uuid" : "22e51ad7-3ba2-35bb-b040-3c415de6fe46",
    "path" : "\/Volumes\/VOLUME\/*\/WeatherKit.framework\/WeatherKit",
    "name" : "WeatherKit",
    "CFBundleVersion" : "1318"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13800816640,
    "CFBundleShortVersionString" : "8.504",
    "CFBundleIdentifier" : "com.apple.coreidv.CoreIDVUI",
    "size" : 1490944,
    "uuid" : "d161e29f-f77b-3d78-a8ca-e4af358dc53f",
    "path" : "\/Volumes\/VOLUME\/*\/CoreIDVUI.framework\/CoreIDVUI",
    "name" : "CoreIDVUI",
    "CFBundleVersion" : "8.504"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13584760832,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.FinHealth",
    "size" : 65536,
    "uuid" : "f3214a2e-f8ea-365a-ac54-89b7be3bcefb",
    "path" : "\/Volumes\/VOLUME\/*\/FinHealth.framework\/FinHealth",
    "name" : "FinHealth",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13779271680,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.PBBridgeSupport",
    "size" : 409600,
    "uuid" : "37885e42-e122-37e5-af46-9251b2237304",
    "path" : "\/Volumes\/VOLUME\/*\/PBBridgeSupport.framework\/PBBridgeSupport",
    "name" : "PBBridgeSupport",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13780205568,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.AccessoryNotifications",
    "size" : 376832,
    "uuid" : "75da7711-4bb5-3860-9616-2b26678951f3",
    "path" : "\/Volumes\/VOLUME\/*\/AccessoryNotifications.framework\/AccessoryNotifications",
    "name" : "AccessoryNotifications",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13773668352,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.InAppMessages",
    "size" : 147456,
    "uuid" : "864319e6-d966-3c25-b376-c331cf727b5e",
    "path" : "\/Volumes\/VOLUME\/*\/InAppMessages.framework\/InAppMessages",
    "name" : "InAppMessages",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13542326272,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.InAppMessagesCore",
    "size" : 32768,
    "uuid" : "056ad2c8-758a-3ec0-b3f0-afdc62315ad4",
    "path" : "\/Volumes\/VOLUME\/*\/InAppMessagesCore.framework\/InAppMessagesCore",
    "name" : "InAppMessagesCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13828390912,
    "CFBundleShortVersionString" : "6.0",
    "CFBundleIdentifier" : "com.apple.weathercore",
    "size" : 2424832,
    "uuid" : "5960b9d9-1896-34ad-84d9-22b584141a67",
    "path" : "\/Volumes\/VOLUME\/*\/WeatherCore.framework\/WeatherCore",
    "name" : "WeatherCore",
    "CFBundleVersion" : "1318"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13815103488,
    "CFBundleShortVersionString" : "6.0",
    "CFBundleIdentifier" : "com.apple.weatherdaemon",
    "size" : 2162688,
    "uuid" : "9188791a-4136-3d65-bee4-7b6c1d0bbee3",
    "path" : "\/Volumes\/VOLUME\/*\/WeatherDaemon.framework\/WeatherDaemon",
    "name" : "WeatherDaemon",
    "CFBundleVersion" : "1318"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13778337792,
    "CFBundleShortVersionString" : "6.0",
    "CFBundleIdentifier" : "com.apple.weatherdata",
    "size" : 278528,
    "uuid" : "efc6adcd-874e-36a3-a9fb-b40c8ee42e81",
    "path" : "\/Volumes\/VOLUME\/*\/WeatherData.framework\/WeatherData",
    "name" : "WeatherData",
    "CFBundleVersion" : "1318"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13803421696,
    "CFBundleShortVersionString" : "8.504",
    "CFBundleIdentifier" : "com.apple.coreidv.CoreIDCred",
    "size" : 327680,
    "uuid" : "d98b2a84-9ad4-3260-b16a-dbf3ca7074c7",
    "path" : "\/Volumes\/VOLUME\/*\/CoreIDCred.framework\/CoreIDCred",
    "name" : "CoreIDCred",
    "CFBundleVersion" : "8.504"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13468893184,
    "CFBundleShortVersionString" : "8.504",
    "CFBundleIdentifier" : "com.apple.coreidv.CoreIDVRGBLiveness",
    "size" : 32768,
    "uuid" : "cdd79ac2-a6e7-35f8-a3a3-306e869c9ef8",
    "path" : "\/Volumes\/VOLUME\/*\/CoreIDVRGBLiveness.framework\/CoreIDVRGBLiveness",
    "name" : "CoreIDVRGBLiveness",
    "CFBundleVersion" : "8.504"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13778911232,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Finhealth.FinHealthInsights",
    "size" : 163840,
    "uuid" : "fd3fccbb-57cc-35d3-8cd4-275bffd14106",
    "path" : "\/Volumes\/VOLUME\/*\/FinHealthInsights.framework\/FinHealthInsights",
    "name" : "FinHealthInsights",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13811466240,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.Finhealth.FinHealthCore",
    "size" : 671744,
    "uuid" : "c27f9656-6170-3119-933f-cb87333da175",
    "path" : "\/Volumes\/VOLUME\/*\/FinHealthCore.framework\/FinHealthCore",
    "name" : "FinHealthCore",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13781008384,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.MetricKit",
    "size" : 131072,
    "uuid" : "bab62ede-1a12-3fe6-b4fd-8476487573d7",
    "path" : "\/Volumes\/VOLUME\/*\/MetricKit.framework\/MetricKit",
    "name" : "MetricKit",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13632028672,
    "size" : 49152,
    "uuid" : "7b4d008f-0503-3dce-9409-4b9a2eb134e9",
    "path" : "\/Volumes\/VOLUME\/*\/libswiftPassKit.dylib",
    "name" : "libswiftPassKit.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13698629632,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.DeviceCheck",
    "size" : 65536,
    "uuid" : "47a09300-ef84-36df-9248-e877740bb0e2",
    "path" : "\/Volumes\/VOLUME\/*\/DeviceCheck.framework\/DeviceCheck",
    "name" : "DeviceCheck",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 12969951232,
    "size" : 49152,
    "uuid" : "75fa6778-178f-394f-9c63-711780430596",
    "path" : "\/Volumes\/VOLUME\/*\/libobjc-trampolines.dylib",
    "name" : "libobjc-trampolines.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13814464512,
    "CFBundleShortVersionString" : "373.2",
    "CFBundleIdentifier" : "com.apple.MTLSimDriver",
    "size" : 229376,
    "uuid" : "8339ca77-3986-3588-9df9-8b8d511ae608",
    "path" : "\/Volumes\/VOLUME\/*\/MTLSimDriver.framework\/MTLSimDriver",
    "name" : "MTLSimDriver",
    "CFBundleVersion" : "373.2"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13818904576,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.gpusw.MetalSerializer",
    "size" : 196608,
    "uuid" : "19460939-4bce-3e8d-8868-5388dd78ace3",
    "path" : "\/Volumes\/VOLUME\/*\/MetalSerializer.framework\/MetalSerializer",
    "name" : "MetalSerializer",
    "CFBundleVersion" : "1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 14344585216,
    "CFBundleShortVersionString" : "9.42.0",
    "CFBundleIdentifier" : "com.apple.RawCamera.bundle",
    "size" : 2441216,
    "uuid" : "51d3ffaf-1f8f-30ad-9c92-0f98a384fc29",
    "path" : "\/Volumes\/VOLUME\/*\/RawCamera.bundle\/RawCamera",
    "name" : "RawCamera",
    "CFBundleVersion" : "1756.120.5"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 14355529728,
    "CFBundleShortVersionString" : "1.0",
    "CFBundleIdentifier" : "com.apple.VideoProcessing",
    "size" : 2015232,
    "uuid" : "8aa6f52b-e350-3a56-adeb-f60906827650",
    "path" : "\/Volumes\/VOLUME\/*\/VideoProcessing.framework\/VideoProcessing",
    "name" : "VideoProcessing",
    "CFBundleVersion" : "1365.1.1"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 14374404096,
    "size" : 1556480,
    "uuid" : "17654445-b8bb-386f-9150-afea3a536eba",
    "path" : "\/Volumes\/VOLUME\/*\/VCPHEVC.videocodec",
    "name" : "VCPHEVC.videocodec"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 14394851328,
    "size" : 1867776,
    "uuid" : "d0e8d5b2-ba47-3da7-9465-ab56659499be",
    "path" : "\/Volumes\/VOLUME\/*\/H264SW.videocodec",
    "name" : "H264SW.videocodec"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 14419804160,
    "size" : 3227648,
    "uuid" : "a1b8b6ed-178e-36f2-bdb5-7e8cca128de1",
    "path" : "\/Volumes\/VOLUME\/*\/AV1SW.videoencoder",
    "name" : "AV1SW.videoencoder"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 4760829952,
    "size" : 114688,
    "uuid" : "c934f7e7-29cf-3bff-8e9a-25a8ec9da538",
    "path" : "\/Volumes\/VOLUME\/*\/Accelerate.framework\/Frameworks\/vImage.framework\/Libraries\/libCGInterfaces.dylib",
    "name" : "libCGInterfaces.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64",
    "base" : 13882834944,
    "size" : 49152,
    "uuid" : "f850481f-4f01-3d7f-b1d2-d7eccd769e75",
    "path" : "\/Volumes\/VOLUME\/*\/libMobileGestaltExtensions.dylib",
    "name" : "libMobileGestaltExtensions.dylib"
  },
  {
    "source" : "P",
    "arch" : "arm64e",
    "base" : 4307976192,
    "size" : 688128,
    "uuid" : "a237ef81-b68b-37ba-a165-92c965529534",
    "path" : "\/usr\/lib\/dyld",
    "name" : "dyld"
  },
  {
    "size" : 0,
    "source" : "A",
    "base" : 0,
    "uuid" : "00000000-0000-0000-0000-000000000000"
  }
],
  "vmSummary" : "ReadOnly portion of Libraries: Total=2.6G resident=0K(0%) swapped_out_or_unallocated=2.6G(100%)\nWritable regions: Total=383.4M written=1843K(0%) resident=1827K(0%) swapped_out=16K(0%) unallocated=381.6M(100%)\n\n                                  VIRTUAL   REGION \nREGION TYPE                          SIZE    COUNT (non-coalesced) \n===========                       =======  ======= \nActivity Tracing                     256K        1 \nCoreMedia memory pool (reserved)     128K        1         reserved VM address space (unallocated)\nFoundation                            16K        1 \nIOSurface                           39.1M        5 \nKernel Alloc Once                     32K        1 \nMALLOC                              89.1M       24 \nMALLOC guard page                   3584K        4 \nMach message                          16K        1 \nSQLite page cache                    512K        4 \nSTACK GUARD                         56.6M       36 \nStack                               35.6M       36 \nVM_ALLOCATE                        190.1M      492 \nVM_ALLOCATE (reserved)               416K       10         reserved VM address space (unallocated)\n__AUTH_CONST                          32K        1 \n__DATA                              83.9M     1521 \n__DATA_CONST                       152.7M     1203 \n__DATA_DIRTY                         272K       14 \n__FONT_DATA                           16K        1 \n__LINKEDIT                           1.1G     1219 \n__TEXT                               1.4G     1219 \n__TPRO_CONST                         176K        3 \ndyld private memory                  6.0G       15 \nmapped file                        227.0M      177 \npage table in kernel                1827K        1 \nshared memory                         16K        1 \n===========                       =======  ======= \nTOTAL                                9.4G     5991 \nTOTAL, minus reserved VM space       9.4G     5991 \n",
  "legacyInfo" : {
  "threadTriggered" : {
    "queue" : "com.apple.main-thread"
  }
},
  "logWritingSignature" : "eaa754691a2ec7641a6329933b6d0ea5292f1521",
  "bug_type" : "309",
  "roots_installed" : 0,
  "trmStatus" : 1,
  "trialInfo" : {
  "rollouts" : [
    {
      "rolloutId" : "6813dc6e1e50e5344eb573e9",
      "factorPackIds" : [

      ],
      "deploymentId" : 240000021
    },
    {
      "rolloutId" : "63508950b3714d3622fc77f7",
      "factorPackIds" : [
        "6526e111d0c9ce2f459b54a8"
      ],
      "deploymentId" : 240000015
    }
  ],
  "experiments" : [

  ]
},
  "reportNotes" : [
  "dyld_process_snapshot_get_shared_cache failed"
]
}

Model: Mac16,1, BootROM 18000.120.36, proc 10:4:6:0 processors, 16 GB, SMC 
Graphics: Apple M4, Apple M4, Built-In
Display: Color LCD, 3024 x 1964 Retina, Main, MirrorOff, Online
Memory Module: LPDDR5, Micron
AirPort: spairport_wireless_card_type_wifi (0x14E4, 0x4388), wl0: Feb  2 2026 19:18:30 version 23.50.20.0.41.51.208 FWID 01-ef259bc2
IO80211_driverkit-1561.3 "IO80211_driverkit-1561.3" Apr 18 2026 17:42:26
AirPort: 
Bluetooth: Version (null), 0 services, 0 devices, 0 incoming serial ports
Network Service: Wi-Fi, AirPort, en0
Thunderbolt Bus: MacBook Pro, Apple Inc.
Thunderbolt Bus: MacBook Pro, Apple Inc.
Thunderbolt Bus: MacBook Pro, Apple Inc.
